namespace SchoolPortal.Common.DTOs
{
    public class RegisterDto
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
    public class LoginDto
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public bool RememberMe { get; set; }
    }
    public class ForgotPasswordDto
    {
        public string Email { get; set; }
    }
    public class ResetPasswordDto
    {
        public string Email { get; set; }
        public string Token { get; set; }
        public string NewPassword { get; set; }
    }
    public class ConfirmEmailDto
    {
        public string UserId { get; set; }
        public string Token { get; set; }
    }
    public class ResendEmailConfirmationDto
    {
        public string Email { get; set; }
    }
    public class ChangePasswordDto
    {
        public string CurrentPassword { get; set; }
        public string NewPassword { get; set; }
        public string ConfirmPassword { get; set; }
    }
    public class TwoFactorAuthenticationDto
    {
        public bool Enable { get; set; }
        public string TwoFactorCode { get; set; }
        public bool RememberMachine { get; set; }
    }
} 