using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaySpaceAssessmentWeb.Data;
using PaySpaceAssessmentWeb.Model;

namespace PaySpaceAssessmentWeb.Pages.Taxes
{
    public class IndexModel : PageModel
    {
        public IEnumerable<Tax> Taxes { get; set; }
        private readonly ApplicationDbContext _db;

        public IndexModel(ApplicationDbContext db)
        {
            _db = db;
        }
        public void OnGet()
        {
            Taxes = _db.Tax;
        }
    }
}
