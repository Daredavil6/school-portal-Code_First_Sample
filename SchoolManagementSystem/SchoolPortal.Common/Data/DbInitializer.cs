using SchoolPortal.Common.Data.Seed;
using System;
using System.Threading.Tasks;

namespace SchoolPortal.Common.Data
{
    public class DbInitializer
    {
        private readonly IServiceProvider _serviceProvider;

        public DbInitializer(IServiceProvider serviceProvider)
        {
            _serviceProvider = serviceProvider;
        }

        public async Task SeedAsync()
        {
            await IdentityDataSeeder.SeedRolesAndAdminAsync(_serviceProvider);
            await CountrySeeder.SeedAsync(_serviceProvider);
        }
    }
}
