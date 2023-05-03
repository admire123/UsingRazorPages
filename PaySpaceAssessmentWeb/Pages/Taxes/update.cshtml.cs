using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.IdentityModel.Tokens;
using PaySpaceAssessmentWeb.Data;
using PaySpaceAssessmentWeb.Model;
using PaySpaceAssessmentWeb.Pages.Taxes;

namespace PaySpaceAssessmentWeb.Pages.Taxes
{
    public class updateModel : PageModel
    {
        private readonly ApplicationDbContext _db;

        public Tax Tax { get; set; }

        public updateModel(ApplicationDbContext db)
        {
            _db = db;
        }
        public void OnGet(int id)
        {
            Tax = _db.Tax.Find(id);
        }

        public async Task<IActionResult> OnPost()
        {

            if (!Tax.postalCode.IsNullOrEmpty() && !Tax.annualIncome.ToString().IsNullOrEmpty())
            {
                Tax.tax = calculateTax(Tax);

                Tax.dateTime = DateTime.Now.ToString();

                _db.Tax.Update(Tax);

                await _db.SaveChangesAsync();

                return RedirectToPage("Index");
            }

            return Page();

        }

        public double calculateTax(Tax tax)
        {
            double results = 0;

            if (tax.postalCode.ToUpper() == "7441" || tax.postalCode.ToUpper() == "1000")
            {
                if (tax.annualIncome <= 8350)
                {
                    results = tax.annualIncome * 0.1;
                }
                else if (tax.annualIncome <= 33950)
                {
                    results = tax.annualIncome * 0.15;
                }
                else if (tax.annualIncome <= 82250)
                {
                    results = tax.annualIncome * 0.25;
                }
                else if (tax.annualIncome <= 171550)
                {
                    results = tax.annualIncome * 0.28;
                }
                else if (tax.annualIncome <= 372950)
                {
                    results = tax.annualIncome * 0.33;
                }
                else
                {
                    results = tax.annualIncome * 0.35;
                }

            }
            else if (tax.postalCode.ToUpper() == "A100")
            {
                if (tax.annualIncome < 200000)
                {
                    results = tax.annualIncome * 0.05;
                }
                else
                {
                    results = 10000;
                }
            }
            else if (tax.postalCode.ToUpper() == "7000")
            {
                results = tax.annualIncome * 0.17;
            }

            return results;
        }


    }




}
