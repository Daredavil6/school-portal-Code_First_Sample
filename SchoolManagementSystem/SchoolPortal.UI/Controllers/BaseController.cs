using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace SchoolPortal.UI.Controllers
{
    public abstract class BaseController : Controller
    {
        protected Guid GetCurrentUserId()
        {
            var userId = Request.Cookies["UserId"];
            if (string.IsNullOrEmpty(userId))
            {
                throw new UnauthorizedAccessException("User must be logged in to perform this action");
            }

            if (!Guid.TryParse(userId, out Guid parsedUserId))
            {
                throw new UnauthorizedAccessException("Invalid user ID format. Please log in again.");
            }

            return parsedUserId;
        }
    }
} 