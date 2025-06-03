using Microsoft.EntityFrameworkCore;
using SchoolPortal.Common.Data;
using SchoolPortal.Common.Models;

namespace CountryService.API.Repository
{
	public class CountryRepository : ICountryRepository
	{
		private readonly ApplicationDbContext _context;

		public CountryRepository(ApplicationDbContext context)
		{
			_context = context;
		}

		public async Task<IEnumerable<Country?>> GetAllAsync()
		{
			return await _context.Set<Country>()
				.Where(c => !c.IsDeleted && c.IsActive)
				.ToListAsync();
		}

		public async Task<Country?> GetByIdAsync(Guid id)
		{
			return await _context.Set<Country>()
				.Where(c => !c.IsDeleted && c.IsActive)
				.FirstOrDefaultAsync(c => c.Id == id);
		}

		public async Task<bool> CreateAsync(Country Country)
		{
			await _context.Set<Country>().AddAsync(Country);
			return await _context.SaveChangesAsync() > 0;
		}

		public async Task<bool> UpdateAsync(Guid id, Country? Country)
		{
			var CountryEntity = await _context.Set<Country>().FindAsync(id);
			if (CountryEntity == null) return false;

			_context.Entry(CountryEntity).CurrentValues.SetValues(Country);
			return await _context.SaveChangesAsync() > 0;
		}

		public async Task<bool> DeleteAsync(Guid id)
		{
			var Country = await _context.Set<Country>().FindAsync(id);
			if (Country == null) return false;

			_context.Set<Country>().Remove(Country);
			return await _context.SaveChangesAsync() > 0;
		}
	}
}
