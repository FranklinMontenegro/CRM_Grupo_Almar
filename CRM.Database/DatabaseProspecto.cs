using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRM.Database
{
    public class DatabaseProspecto 
    {
        private readonly ContextCRM _context;
        public DatabaseProspecto(ContextCRM context)
        {
            _context = context;
        }

        public List<EntityProspecto> ListadoProspecto()
        {
            return _context.Prospecto.ToList();
        }

    }
}
