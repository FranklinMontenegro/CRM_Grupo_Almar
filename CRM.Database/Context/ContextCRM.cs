using Microsoft.EntityFrameworkCore;

namespace CRM.Database
{
    public class ContextCRM : DbContext
    {
        public ContextCRM(DbContextOptions<ContextCRM> options)
             : base(options)
        {
                
        }

        public virtual DbSet<EntityProspecto> Prospecto { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Name=CrmGrupoAlmar");
            }
        }

       
    }

}
