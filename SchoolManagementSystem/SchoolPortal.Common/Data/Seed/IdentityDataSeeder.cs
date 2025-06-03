using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.DependencyInjection;
using SchoolPortal.Common.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchoolPortal.Common.Data.Seed
{
    public static class IdentityDataSeeder
    {
        public static async Task SeedRolesAndAdminAsync(IServiceProvider serviceProvider)
        {
            var roleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>();
            var userManager = serviceProvider.GetRequiredService<UserManager<ApplicationUser>>();

            // Seed Roles
            string[] roleNames = { "Admin", "Teacher", "Student", "Staff", "Parent" };
            foreach (var roleName in roleNames)
            {
                if (!await roleManager.RoleExistsAsync(roleName))
                {
                    await roleManager.CreateAsync(new IdentityRole(roleName));
                }
            }

            // Seed Default Users
            var defaultUsers = new List<(string Email, string Password, string Role, string FirstName, string LastName)>
            {
                ("admin@school.com", "Admin@123", "Admin", "Admin", "User"),
                ("teacher@school.com", "Teacher@123", "Teacher", "Teacher", "User"),
                ("student@school.com", "Student@123", "Student", "Student", "User"),
                ("staff@school.com", "Staff@123", "Staff", "Staff", "User"),
                ("parent@school.com", "Parent@123", "Parent", "Parent", "User")
            };

            foreach (var (email, password, role, firstName, lastName) in defaultUsers)
            {
                var user = await userManager.FindByEmailAsync(email);
                if (user == null)
                {
                    user = new ApplicationUser
                    {
                        UserName = email,
                        Email = email,
                        EmailConfirmed = true,
                        PhoneNumberConfirmed = true,
                        TwoFactorEnabled = false,
                        LockoutEnabled = false,
                        AccessFailedCount = 0,
                        FirstName = firstName,
                        LastName = lastName,
                        IsDeleted = false
                    };

                    var result = await userManager.CreateAsync(user, password);
                    if (result.Succeeded)
                    {
                        await userManager.AddToRoleAsync(user, role);
                    }
                    else
                    {
                        // Log the errors if needed
                        var errors = string.Join(", ", result.Errors.Select(e => e.Description));
                        throw new Exception($"Failed to create user {email}. Errors: {errors}");
                    }
                }
                else
                {
                    // Ensure user has the correct role
                    var userRoles = await userManager.GetRolesAsync(user);
                    if (!userRoles.Contains(role))
                    {
                        await userManager.AddToRoleAsync(user, role);
                    }
                }
            }
        }
    }
}
