using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.IdentityModel.Tokens;
using PaySpaceAssessmentWeb.Data;
using PaySpaceAssessmentWeb.Model;

namespace PaySpaceAssessmentWeb.Pages.Taxes
{
    public class deleteModel : PageModel
    {
        private readonly ApplicationDbContext _db;

        public Tax Tax { get; set; }

        public deleteModel(ApplicationDbContext db)
        {
            _db = db;
        }
        public void OnGet(int id)
        {
            Tax = _db.Tax.Find(id);
        }

        public async Task<IActionResult> OnPost(Tax tax)
        {

            var taxIdFromDB = _db.Tax.Find(tax.Id);
            if (taxIdFromDB != null)
            {
                _db.Tax.Remove(taxIdFromDB);
                await _db.SaveChangesAsync();
                return RedirectToPage("Index");
            }
            return Page();

        }
    }
}
