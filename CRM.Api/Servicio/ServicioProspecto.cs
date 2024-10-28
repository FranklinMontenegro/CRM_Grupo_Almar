using CRM.Api.IServicio;
using CRM.Database;
using CRM.ViewModel;

namespace CRM.Api.Servicio
{
    public class ServicioProspecto : IServicioProspecto
    {
        private readonly DatabaseProspecto _prospectoData;
        public ServicioProspecto(DatabaseProspecto prospectoData)
        {
            _prospectoData = prospectoData;
        }

        public List<EntityProspecto> ListadoProspecto()
        {
            return _prospectoData.ListadoProspecto();
        }
    }
}
