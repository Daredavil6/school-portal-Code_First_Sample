using AutoMapper;
using SchoolPortal.Common.DTOs;
using SchoolPortal.Common.Models;

namespace SchoolPortal.Common.Mappings
{
	public class AutoMapperProfile : Profile
	{
		public AutoMapperProfile()
		{
			CreateMap<Country, CreateCountryDto>().ReverseMap();
			CreateMap<Country, UpdateCountryDto>().ReverseMap();
			CreateMap<Country, ViewCountryDto>().ReverseMap();

			//CreateMap<StateMaster, CreateStateDto>().ReverseMap();
			//CreateMap<StateMaster, UpdateStateDto>().ReverseMap();
			//CreateMap<StateMaster, ViewStateDto>()
			//	.ForMember(dest => dest.Name, opt => opt.MapFrom(src => src.Country != null ? src.Country.Name : null))
			//	.ReverseMap();

			//CreateMap<CityMaster, CreateCityDto>().ReverseMap();
			//CreateMap<CityMaster, UpdateCityDto>().ReverseMap();
			//CreateMap<CityMaster, ViewCityDto>().ReverseMap();

			//CreateMap<UserDetail, CreateUserDetailDto>().ReverseMap();
			//CreateMap<UserDetail, UpdateUserDetailDto>().ReverseMap();
			//CreateMap<UserDetail, ViewUserDetailDto>().ReverseMap();
		}
	}
}
