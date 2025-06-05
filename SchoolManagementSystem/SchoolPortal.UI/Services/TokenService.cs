using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Microsoft.IdentityModel.Tokens;
using SchoolPortal.Common.DTOs;

namespace SchoolPortal.UI.Services
{
    public interface ITokenService
    {
        void SaveToken(AuthResponse response);
        void RemoveToken();
        string GetToken();
        bool IsTokenValid();
        ClaimsPrincipal GetPrincipalFromToken(string token);
    }

    public class TokenService : ITokenService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IConfiguration _configuration;

        public TokenService(IHttpContextAccessor httpContextAccessor, IConfiguration configuration)
        {
            _httpContextAccessor = httpContextAccessor;
            _configuration = configuration;
        }

        public void SaveToken(AuthResponse response)
        {
            if (response == null || string.IsNullOrEmpty(response.Token))
                return;

            var cookieOptions = new CookieOptions
            {
                HttpOnly = true,
                Secure = true,
                SameSite = SameSiteMode.Strict,
                Expires = DateTime.UtcNow.AddDays(response.ExpiresIn)
            };

            _httpContextAccessor.HttpContext?.Response.Cookies.Append("JWTToken", response.Token, cookieOptions);
            _httpContextAccessor.HttpContext?.Response.Cookies.Append("UserName", response.UserName ?? "", cookieOptions);
            _httpContextAccessor.HttpContext?.Response.Cookies.Append("UserEmail", response.Email ?? "", cookieOptions);
            
            // Save user ID from the token
            var handler = new JwtSecurityTokenHandler();
            var token = handler.ReadJwtToken(response.Token);
            var userId = token.Claims.FirstOrDefault(c => c.Type == ClaimTypes.NameIdentifier)?.Value;
            if (!string.IsNullOrEmpty(userId))
            {
                _httpContextAccessor.HttpContext?.Response.Cookies.Append("UserId", userId, cookieOptions);
            }

            // Save roles if available
            if (response.Roles != null && response.Roles.Any())
            {
                _httpContextAccessor.HttpContext?.Response.Cookies.Append("UserRoles", string.Join(",", response.Roles), cookieOptions);
            }
        }

        public void RemoveToken()
        {
            var cookieOptions = new CookieOptions
            {
                HttpOnly = true,
                Secure = true,
                SameSite = SameSiteMode.Strict,
                Expires = DateTime.UtcNow.AddDays(-1)
            };

            _httpContextAccessor.HttpContext?.Response.Cookies.Delete("JWTToken", cookieOptions);
            _httpContextAccessor.HttpContext?.Response.Cookies.Delete("UserName", cookieOptions);
            _httpContextAccessor.HttpContext?.Response.Cookies.Delete("UserEmail", cookieOptions);
            _httpContextAccessor.HttpContext?.Response.Cookies.Delete("UserId", cookieOptions);
            _httpContextAccessor.HttpContext?.Response.Cookies.Delete("UserRoles", cookieOptions);
        }

        public string GetToken()
        {
            return _httpContextAccessor.HttpContext?.Request.Cookies["JWTToken"] ?? string.Empty;
        }

        public bool IsTokenValid()
        {
            var token = GetToken();
            if (string.IsNullOrEmpty(token))
                return false;

            try
            {
                var tokenHandler = new JwtSecurityTokenHandler();
                var key = Encoding.ASCII.GetBytes(_configuration["JwtSettings:SecretKey"]);
                tokenHandler.ValidateToken(token, new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    IssuerSigningKey = new SymmetricSecurityKey(key),
                    ValidateIssuer = true,
                    ValidIssuer = _configuration["JwtSettings:Issuer"],
                    ValidateAudience = true,
                    ValidAudience = _configuration["JwtSettings:Audience"],
                    ValidateLifetime = true,
                    ClockSkew = TimeSpan.Zero
                }, out SecurityToken validatedToken);

                return true;
            }
            catch
            {
                return false;
            }
        }

        public ClaimsPrincipal GetPrincipalFromToken(string token)
        {
            if (string.IsNullOrEmpty(token))
                return null;

            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_configuration["JwtSettings:SecretKey"]);

            var tokenValidationParameters = new TokenValidationParameters
            {
                ValidateIssuerSigningKey = true,
                IssuerSigningKey = new SymmetricSecurityKey(key),
                ValidateIssuer = true,
                ValidIssuer = _configuration["JwtSettings:Issuer"],
                ValidateAudience = true,
                ValidAudience = _configuration["JwtSettings:Audience"],
                ValidateLifetime = true,
                ClockSkew = TimeSpan.Zero
            };

            try
            {
                var principal = tokenHandler.ValidateToken(token, tokenValidationParameters, out var validatedToken);
                return principal;
            }
            catch
            {
                return null;
            }
        }
    }
} 