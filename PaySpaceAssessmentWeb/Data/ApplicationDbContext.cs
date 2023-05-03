using Microsoft.EntityFrameworkCore;
using PaySpaceAssessmentWeb.Model;

namespace PaySpaceAssessmentWeb.Data
{
    
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }
        public DbSet<Tax> Tax { get; set; }
    }
}
