using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace PaySpaceAssessmentWeb.Model
{
    public class Tax
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [Display(Name = "Annual Income")]
        public double annualIncome { get; set; }

        [Required]
        [Display(Name = "Postal Code")]
        public string postalCode { get; set; }

        [Display(Name = "Calculated Tax")]
        public double tax { get; set; }

        [Display(Name = "Date")]

        public string dateTime { get; set; }
    }
}
