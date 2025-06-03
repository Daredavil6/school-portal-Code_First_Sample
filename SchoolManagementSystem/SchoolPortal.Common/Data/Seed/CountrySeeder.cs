using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using SchoolPortal.Common.Constants;
using SchoolPortal.Common.Models;
using System;
using System.Threading.Tasks;

namespace SchoolPortal.Common.Data.Seed
{
    public static class CountrySeeder
    {
        public static async Task SeedAsync(IServiceProvider serviceProvider)
        {
            using var scope = serviceProvider.CreateScope();
            var context = scope.ServiceProvider.GetRequiredService<ApplicationDbContext>();

            // Check if we already have countries
            if (await context.Countries.AnyAsync())
            {
                return; // Database has been seeded
            }

            // Get the admin user's ID
            var adminUser = await context.Users.FirstOrDefaultAsync(u => u.Email == "admin@school.com");
            if (adminUser == null)
            {
                throw new Exception("Admin user not found. Please ensure IdentityDataSeeder has run first.");
            }

            var currentDate = DateTime.UtcNow;

            var countries = new[]
            {
                new Country
                {
                    Id = Guid.NewGuid(),
                    Name = "United States",
                    IsActive = true,
                    IsDeleted = false,
                    CreatedBy = adminUser.Id,
                    CreatedDate = currentDate,
                    Status = EntityStatus.Created,
                    StatusMessage = "Initial Seed"
                },
                new Country
                {
                    Id = Guid.NewGuid(),
                    Name = "United Kingdom",
                    IsActive = true,
                    IsDeleted = false,
                    CreatedBy = adminUser.Id,
                    CreatedDate = currentDate,
                    Status = EntityStatus.Created,
                    StatusMessage = "Initial Seed"
                },
                new Country
                {
                    Id = Guid.NewGuid(),
                    Name = "Canada",
                    IsActive = true,
                    IsDeleted = false,
                    CreatedBy = adminUser.Id,
                    CreatedDate = currentDate,
                    Status = EntityStatus.Created,
                    StatusMessage = "Initial Seed"
                },
                new Country
                {
                    Id = Guid.NewGuid(),
                    Name = "Australia",
                    IsActive = true,
                    IsDeleted = false,
                    CreatedBy = adminUser.Id,
                    CreatedDate = currentDate,
                    Status = EntityStatus.Created,
                    StatusMessage = "Initial Seed"
                },
                new Country
                {
                    Id = Guid.NewGuid(),
                    Name = "India",
                    IsActive = true,
                    IsDeleted = false,
                    CreatedBy = adminUser.Id,
                    CreatedDate = currentDate,
                    Status = EntityStatus.Created,
                    StatusMessage = "Initial Seed"
                }
            };

            await context.Countries.AddRangeAsync(countries);
            await context.SaveChangesAsync();
        }
    }
} 