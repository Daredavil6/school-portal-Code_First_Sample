using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using SchoolPortal.Common.Models;
using SchoolPortal.Common.Data;
using SchoolPortal.Common.DTOs;
using System.Threading.Tasks;
using System;
using Microsoft.AspNetCore.Authorization;
using System.Linq;

namespace UserService.API.Controllers
{
    [ApiController]
    [Route("api/v1/[controller]")]
    public class AccountController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly ApplicationDbContext _context;

        public AccountController(UserManager<ApplicationUser> userManager, SignInManager<ApplicationUser> signInManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _context = context;
        }

        [HttpPost("register")]
        public async Task<IActionResult> Register(RegisterDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var user = new ApplicationUser
            {
                UserName = dto.Email,
                Email = dto.Email,
                FirstName = dto.FirstName,
                LastName = dto.LastName
            };

            var result = await _userManager.CreateAsync(user, dto.Password);

            if (result.Succeeded)
            {
                // Generate email confirmation token
                var token = await _userManager.GenerateEmailConfirmationTokenAsync(user);
                
                // TODO: Send confirmation email with token
                // For now, we'll just return the token in the response
                return Ok(new { message = "Registration successful. Please check your email to confirm your account.", userId = user.Id, token });
            }

            return BadRequest(result.Errors);
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(LoginDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var user = await _userManager.FindByEmailAsync(dto.Email);
            if (user == null)
                return Unauthorized(new { message = "Invalid email or password" });

            if (!await _userManager.IsEmailConfirmedAsync(user))
                return Unauthorized(new { message = "Please confirm your email before logging in" });

            var result = await _signInManager.PasswordSignInAsync(user, dto.Password, dto.RememberMe, lockoutOnFailure: true);

            if (result.Succeeded)
            {
                return Ok(new { message = "Login successful" });
            }
            else if (result.IsLockedOut)
            {
                return Unauthorized(new { message = "Account is locked. Please try again later." });
            }
            else
            {
                return Unauthorized(new { message = "Invalid email or password" });
            }
        }

        [HttpPost("confirm-email")]
        public async Task<IActionResult> ConfirmEmail(ConfirmEmailDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var user = await _userManager.FindByIdAsync(dto.UserId);
            if (user == null)
                return NotFound(new { message = "User not found" });

            var result = await _userManager.ConfirmEmailAsync(user, dto.Token);

            if (result.Succeeded)
            {
                return Ok(new { message = "Email confirmed successfully" });
            }

            return BadRequest(result.Errors);
        }

        [HttpPost("logout")]
        public async Task<IActionResult> Logout()
        {
            await _signInManager.SignOutAsync();
            return Ok(new { message = "Successfully logged out" });
        }

        [HttpPost("forgot-password")]
        public async Task<IActionResult> ForgotPassword(ForgotPasswordDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var user = await _userManager.FindByEmailAsync(dto.Email);
            if (user == null || !await _userManager.IsEmailConfirmedAsync(user))
            {
                // Don't reveal that the user does not exist or is not confirmed
                return Ok(new { message = "If your email is registered, you will receive a password reset link." });
            }

            var token = await _userManager.GeneratePasswordResetTokenAsync(user);
            
            // TODO: Send email with reset token
            // For now, we'll just return the token in the response
            return Ok(new { message = "Password reset instructions have been sent to your email.", token });
        }

        [HttpPost("reset-password")]
        public async Task<IActionResult> ResetPassword(ResetPasswordDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var user = await _userManager.FindByEmailAsync(dto.Email);
            if (user == null)
            {
                // Don't reveal that the user does not exist
                return Ok(new { message = "Password has been reset successfully." });
            }

            var result = await _userManager.ResetPasswordAsync(user, dto.Token, dto.NewPassword);
            if (result.Succeeded)
            {
                return Ok(new { message = "Password has been reset successfully." });
            }

            return BadRequest(result.Errors);
        }

        [HttpPost("resend-email-confirmation")]
        public async Task<IActionResult> ResendEmailConfirmation(ResendEmailConfirmationDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var user = await _userManager.FindByEmailAsync(dto.Email);
            if (user == null)
            {
                // Don't reveal that the user does not exist
                return Ok(new { message = "If your email is registered, you will receive a confirmation link." });
            }

            if (await _userManager.IsEmailConfirmedAsync(user))
            {
                return BadRequest(new { message = "Email is already confirmed." });
            }

            var token = await _userManager.GenerateEmailConfirmationTokenAsync(user);
            
            // TODO: Send confirmation email with token
            // For now, we'll just return the token in the response
            return Ok(new { message = "Confirmation email has been sent.", userId = user.Id, token });
        }

        [Authorize]
        [HttpPost("change-password")]
        public async Task<IActionResult> ChangePassword(ChangePasswordDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return NotFound(new { message = "User not found" });
            }

            var result = await _userManager.ChangePasswordAsync(user, dto.CurrentPassword, dto.NewPassword);
            if (result.Succeeded)
            {
                await _signInManager.RefreshSignInAsync(user);
                return Ok(new { message = "Password has been changed successfully." });
            }

            return BadRequest(result.Errors);
        }

        [Authorize]
        [HttpPost("two-factor-authentication")]
        public async Task<IActionResult> TwoFactorAuthentication(TwoFactorAuthenticationDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return NotFound(new { message = "User not found" });
            }

            if (dto.Enable)
            {
                var result = await _userManager.SetTwoFactorEnabledAsync(user, true);
                if (result.Succeeded)
                {
                    return Ok(new { message = "Two-factor authentication has been enabled." });
                }
                return BadRequest(result.Errors);
            }
            else
            {
                var result = await _userManager.SetTwoFactorEnabledAsync(user, false);
                if (result.Succeeded)
                {
                    return Ok(new { message = "Two-factor authentication has been disabled." });
                }
                return BadRequest(result.Errors);
            }
        }

        [Authorize]
        [HttpPost("show-recovery-codes")]
        public async Task<IActionResult> ShowRecoveryCodes()
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return NotFound(new { message = "User not found" });
            }

            var recoveryCodes = await _userManager.GenerateNewTwoFactorRecoveryCodesAsync(user, 10);
            return Ok(new { recoveryCodes });
        }

        [Authorize]
        [HttpPost("external-logins")]
        public async Task<IActionResult> ExternalLogins()
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return NotFound(new { message = "User not found" });
            }

            var currentLogins = await _userManager.GetLoginsAsync(user);
            var otherLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync())
                .Where(auth => currentLogins.All(ul => auth.Name != ul.LoginProvider))
                .ToList();

            return Ok(new { currentLogins, otherLogins });
        }
    }
} 