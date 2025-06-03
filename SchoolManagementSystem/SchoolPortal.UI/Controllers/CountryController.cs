using Microsoft.AspNetCore.Mvc;
using SchoolPortal.Common.DTOs;

namespace SchoolPortal.UI.Controllers
{
    public class CountryController : Controller
    {
        private readonly HttpClient _httpClient;
        private readonly IConfiguration _configuration;

        public CountryController(IHttpClientFactory httpClientFactory, IConfiguration configuration)
        {
            _httpClient = httpClientFactory.CreateClient("OcelotClient");
            _configuration = configuration;
        }

        // GET: Country
        public async Task<IActionResult> Index()
        {
            try
            {
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
            catch (Exception)
            {
                TempData["ErrorMessage"] = "Unexpected error occurred while deleting country.";
                return NotFound();
            }
        }
    }
}
