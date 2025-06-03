using CountryService.API.Service;
using Microsoft.AspNetCore.Mvc;
using SchoolPortal.Common.DTOs;

namespace CountryService.API.Controllers
{
	[ApiController]
	[Route("api/v1/[controller]")]
	[Produces("application/json")]
	public class CountryController : ControllerBase
	{
		private readonly ICountryService _countryService;

		public CountryController(ICountryService countryService)
		{
			_countryService = countryService;
		}

		/// <summary>
		/// Gets all countries
		/// </summary>
		/// <returns>List of all countries</returns>
		/// <response code="200">Returns the list of countries</response>
		[HttpGet]
		[ProducesResponseType(StatusCodes.Status200OK)]
		public async Task<ActionResult<IEnumerable<ViewCountryDto>>> GetCountries()
		{
			return Ok(await _countryService.GetAllAsync());
		}

		/// <summary>
		/// Gets a country by its ID
		/// </summary>
		/// <param name="id">The country ID</param>
		/// <returns>The country details</returns>
		/// <response code="200">Returns the country</response>
		/// <response code="404">If the country is not found</response>
		[HttpGet("{id}")]
		[ProducesResponseType(StatusCodes.Status200OK)]
		[ProducesResponseType(StatusCodes.Status404NotFound)]
		public async Task<ActionResult<UpdateCountryDto>> GetCountryById(Guid id)
		{
			var country = await _countryService.GetByIdAsync(id);

			if (country == null)
				return NotFound($"Country with ID {id} not found.");

			return Ok(country);
		}

		/// <summary>
		/// Creates a new country
		/// </summary>
		/// <param name="dto">The country creation data</param>
		/// <returns>The created country</returns>
		/// <response code="200">Returns the created country</response>
		/// <response code="400">If the data is invalid</response>
		[HttpPost]
		[ProducesResponseType(StatusCodes.Status200OK)]
		[ProducesResponseType(StatusCodes.Status400BadRequest)]
		public async Task<ActionResult<ViewCountryDto>> CreateCountry([FromBody] CreateCountryDto dto)
		{
			if (dto == null)
				return BadRequest("Invalid data.");

			var createdCountry = await _countryService.AddAsync(dto);
			return Ok(createdCountry);
		}

		/// <summary>
		/// Updates an existing country
		/// </summary>
		/// <param name="id">The country ID</param>
		/// <param name="dto">The country update data</param>
		/// <returns>No content if successful</returns>
		/// <response code="204">If the country was updated</response>
		/// <response code="400">If the data is invalid</response>
		/// <response code="404">If the country is not found</response>
		[HttpPut("{id}")]
		[ProducesResponseType(StatusCodes.Status204NoContent)]
		[ProducesResponseType(StatusCodes.Status400BadRequest)]
		[ProducesResponseType(StatusCodes.Status404NotFound)]
		public async Task<IActionResult> UpdateCountry(Guid id, [FromBody] UpdateCountryDto dto)
		{
			if (dto == null)
				return BadRequest("Invalid data.");

			var updated = await _countryService.UpdateAsync(id, dto);

			if (updated)
				return NoContent();

			return NotFound($"Country with ID {id} not found.");
		}

		/// <summary>
		/// Deletes a country
		/// </summary>
		/// <param name="id">The country ID</param>
		/// <returns>No content if successful</returns>
		/// <response code="204">If the country was deleted</response>
		/// <response code="404">If the country is not found</response>
		[HttpDelete("{id}")]
		[ProducesResponseType(StatusCodes.Status204NoContent)]
		[ProducesResponseType(StatusCodes.Status404NotFound)]
		public async Task<IActionResult> DeleteCountry(Guid id)
		{
			var deleted = await _countryService.DeleteAsync(id);

			if (deleted)
				return NoContent();

			return NotFound($"Country with ID {id} not found.");
		}
	}
}
