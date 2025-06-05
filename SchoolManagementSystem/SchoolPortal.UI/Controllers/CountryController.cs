using Microsoft.AspNetCore.Mvc;
using SchoolPortal.Common.DTOs;
using System.Net.Http.Headers;
using SchoolPortal.UI.Services;
using SchoolPortal.Common.Constants;
using SchoolPortal.Common.Services;

namespace SchoolPortal.UI.Controllers
{
    public class CountryController : BaseController
    {
        private readonly HttpClient _httpClient;
        private readonly IConfiguration _configuration;
        private readonly ITokenService _tokenService;
        private readonly BaseServiceImplementation _baseService;

        public CountryController(
            IHttpClientFactory httpClientFactory, 
            IConfiguration configuration,
            ITokenService tokenService)
        {
            _httpClient = httpClientFactory.CreateClient("OcelotClient");
            _configuration = configuration;
            _tokenService = tokenService;
            _baseService = new BaseServiceImplementation();
        }

        // GET: Country
        public async Task<IActionResult> Index()
        {
            try
            {
                var token = _tokenService.GetToken();
                if (!string.IsNullOrEmpty(token))
                {
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                }

                var response = await _httpClient.GetAsync("/api/v1/location/country");
                if (response.IsSuccessStatusCode)
                {
                    var countries = await response.Content.ReadFromJsonAsync<List<ViewCountryDto>>();
                    return View(countries);
                }
                else
                {
                    TempData["ErrorMessage"] = "Unable to fetch country data.";
                    return View(new List<ViewCountryDto>());
                }
            }
            catch (Exception)
            {
                TempData["ErrorMessage"] = "Unexpected error occurred while fetching data.";
                return View(new List<ViewCountryDto>());
            }
        }

        // GET: Country/Details/5
        public async Task<IActionResult> Details(Guid id)
        {
            try
            {
                var token = _tokenService.GetToken();
                if (!string.IsNullOrEmpty(token))
                {
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                }

                var response = await _httpClient.GetAsync($"/api/v1/location/country/{id}");
                if (response.IsSuccessStatusCode)
                {
                    var country = await response.Content.ReadFromJsonAsync<UpdateCountryDto>();
                    return View(country);
                }
                else
                {
                    TempData["ErrorMessage"] = "Country not found.";
                    return NotFound();
                }
            }
            catch (Exception)
            {
                TempData["ErrorMessage"] = "Unexpected error occurred.";
                return NotFound();
            }
        }

        // GET: Country/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Country/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(CreateCountryDto country)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var token = _tokenService.GetToken();
                    if (!string.IsNullOrEmpty(token))
                    {
                        _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                    }

                    // Set dynamic values
                    country.Id = Guid.NewGuid();
                    _baseService.SetCreateAuditFields(country, GetCurrentUserId());

                    var response = await _httpClient.PostAsJsonAsync("/api/v1/location/country", country);
                    if (response.IsSuccessStatusCode)
                    {
                        TempData["SuccessMessage"] = "Country created successfully.";
                        return RedirectToAction(nameof(Index));
                    }
                    else
                    {
                        TempData["ErrorMessage"] = "Error creating country. Please try again.";
                    }
                }
                catch (UnauthorizedAccessException)
                {
                    return RedirectToAction("Login", "Account");
                }
                catch (Exception)
                {
                    TempData["ErrorMessage"] = "Unexpected error occurred while creating country.";
                }
            }
            return View(country);
        }

        // GET: Country/Edit/5
        public async Task<IActionResult> Edit(Guid id)
        {
            try
            {
                var token = _tokenService.GetToken();
                if (!string.IsNullOrEmpty(token))
                {
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                }

                var response = await _httpClient.GetAsync($"/api/v1/location/country/{id}");
                if (response.IsSuccessStatusCode)
                {
                    var country = await response.Content.ReadFromJsonAsync<UpdateCountryDto>();
                    return View(country);
                }
                else
                {
                    TempData["ErrorMessage"] = "Country not found.";
                    return NotFound();
                }
            }
            catch (Exception)
            {
                TempData["ErrorMessage"] = "Unexpected error occurred.";
                return NotFound();
            }
        }

        // POST: Country/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Guid id, UpdateCountryDto country)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var token = _tokenService.GetToken();
                    if (!string.IsNullOrEmpty(token))
                    {
                        _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                    }

                    // Set dynamic values
                    _baseService.SetUpdateAuditFields(country, GetCurrentUserId());

                    var response = await _httpClient.PutAsJsonAsync($"/api/v1/location/country/{id}", country);
                    if (response.IsSuccessStatusCode)
                    {
                        TempData["SuccessMessage"] = "Country updated successfully.";
                        return RedirectToAction(nameof(Index));
                    }
                    else
                    {
                        TempData["ErrorMessage"] = "Error updating country.";
                    }
                }
                catch (UnauthorizedAccessException)
                {
                    return RedirectToAction("Login", "Account");
                }
                catch (Exception)
                {
                    TempData["ErrorMessage"] = "Unexpected error occurred while updating country.";
                }
            }
            return View(country);
        }

        // GET: Country/Delete/5
        public async Task<IActionResult> Delete(Guid id)
        {
            try
            {
                var token = _tokenService.GetToken();
                if (!string.IsNullOrEmpty(token))
                {
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                }

                var response = await _httpClient.GetAsync($"/api/v1/location/country/{id}");
                if (response.IsSuccessStatusCode)
                {
                    var country = await response.Content.ReadFromJsonAsync<UpdateCountryDto>();
                    return View(country);
                }
                else
                {
                    TempData["ErrorMessage"] = "Country not found.";
                    return NotFound();
                }
            }
            catch (Exception)
            {
                TempData["ErrorMessage"] = "Unexpected error occurred.";
                return NotFound();
            }
        }

        // POST: Country/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(Guid id)
        {
            try
            {
                var token = _tokenService.GetToken();
                if (!string.IsNullOrEmpty(token))
                {
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                }

                // Get the country first to set ModifiedBy
                var getResponse = await _httpClient.GetAsync($"/api/v1/location/country/{id}");
                if (!getResponse.IsSuccessStatusCode)
                {
                    TempData["ErrorMessage"] = "Country not found.";
                    return NotFound();
                }

                var country = await getResponse.Content.ReadFromJsonAsync<UpdateCountryDto>();
                if (country == null)
                {
                    TempData["ErrorMessage"] = "Country not found.";
                    return NotFound();
                }

                // Set the ModifiedBy to current user
                _baseService.SetDeleteAuditFields(country, GetCurrentUserId());

                // Perform the delete operation
                var response = await _httpClient.DeleteAsync($"/api/v1/location/country/{id}");
                if (response.IsSuccessStatusCode)
                {
                    TempData["SuccessMessage"] = "Country deleted successfully.";
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    TempData["ErrorMessage"] = "Error deleting country.";
                    return NotFound();
                }
            }
            catch (UnauthorizedAccessException)
            {
                return RedirectToAction("Login", "Account");
            }
            catch (Exception)
            {
                TempData["ErrorMessage"] = "Unexpected error occurred while deleting country.";
                return NotFound();
            }
        }
    }
}
