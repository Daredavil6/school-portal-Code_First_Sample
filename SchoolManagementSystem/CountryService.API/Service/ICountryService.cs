using SchoolPortal.Common.DTOs;
using SchoolPortal.Common.Service;

namespace CountryService.API.Service
{
	public interface ICountryService : IGenericService<ViewCountryDto, CreateCountryDto, UpdateCountryDto>
	{
	}
}
