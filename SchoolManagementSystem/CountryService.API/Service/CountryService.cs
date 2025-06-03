using AutoMapper;
using CountryService.API.Repository;
using SchoolPortal.Common.DTOs;
using SchoolPortal.Common.Models;
using SchoolPortal.Common.Constants;

namespace CountryService.API.Service
{
	public class CountryService : ICountryService
	{
		private readonly ICountryRepository _countryRepository;
		private readonly IMapper _mapper;

		public CountryService(ICountryRepository countryRepository, IMapper mapper)
		{
			_countryRepository = countryRepository;
			_mapper = mapper;
		}

		public async Task<ViewCountryDto?> AddAsync(CreateCountryDto dto)
		{
			var country = _mapper.Map<Country>(dto);
			country.CreatedDate = DateTime.UtcNow;
			country.ModifiedDate = null;
			country.ModifiedBy = null;
			country.Status = EntityStatus.Created;
			country.StatusMessage = "Country Created Successfully";
			await _countryRepository.CreateAsync(country);
			return _mapper.Map<ViewCountryDto?>(country);
		}

		public async Task<bool> DeleteAsync(Guid id)
		{
			return await DeleteAsync(id, new Guid("368BD1DF-42D6-4F05-9CA0-8DF22191B917")); // Default system user
		}

		public async Task<bool> DeleteAsync(Guid id, Guid modifiedBy)
		{
			var country = await _countryRepository.GetByIdAsync(id);
			if (country == null) return false;

			country.IsDeleted = true;
			country.IsActive = false;
			country.ModifiedDate = DateTime.UtcNow;
			country.ModifiedBy = modifiedBy;
			country.Status = EntityStatus.Deleted;
			country.StatusMessage = "Country Deleted Successfully";

			return await _countryRepository.UpdateAsync(id, country);
		}

		public async Task<IEnumerable<ViewCountryDto?>> GetAllAsync()
		{
			var countries = await _countryRepository.GetAllAsync();
			return _mapper.Map<IEnumerable<ViewCountryDto?>>(countries);
		}

		public async Task<UpdateCountryDto?> GetByIdAsync(Guid id)
		{
			var country = await _countryRepository.GetByIdAsync(id);
			return country == null ? null : _mapper.Map<UpdateCountryDto?>(country);
		}

		public async Task<bool> UpdateAsync(Guid id, UpdateCountryDto dto)
		{
			var country = await _countryRepository.GetByIdAsync(id);
			if (country == null) return false;

			_mapper.Map(dto, country);
			country.ModifiedDate = DateTime.UtcNow;
			country.ModifiedBy = dto.ModifiedBy;
			country.Status = EntityStatus.Modified;
			country.StatusMessage = "Country Updated Successfully";
			return await _countryRepository.UpdateAsync(id, country);
		}
	}
}
