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

            var defaultUserId = new Guid("368BD1DF-42D6-4F05-9CA0-8DF22191B917"); // Default system user
            var currentDate = DateTime.UtcNow;

            var countries = new[]
            {
                new Country
                {
                    Id = Guid.NewGuid(),
                    Name = "United States",
                    IsActive = true,
                    IsDeleted = false,
                    CreatedBy = defaultUserId,
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
                    CreatedBy = defaultUserId,
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
                    CreatedBy = defaultUserId,
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
                    CreatedBy = defaultUserId,
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
                    CreatedBy = defaultUserId,
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