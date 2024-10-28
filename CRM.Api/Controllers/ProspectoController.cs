using CRM.Api.IServicio;
using CRM.ViewModel;
using Microsoft.AspNetCore.Mvc;

namespace CRM.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ProspectoController : ControllerBase
    {

        IServicioProspecto _servicioProspecto;

        public ProspectoController(IServicioProspecto servicioProspecto)
        {
            _servicioProspecto = servicioProspecto;
        }


        [HttpGet("api/listadoProspecto")]
        public ActionResult<List<ViewModelProspecto>> ListadoProspecto()
        {
            List<ViewModelProspecto> listProspecto = new List<ViewModelProspecto>();

            var resultadoProspecto = _servicioProspecto.ListadoProspecto();

            foreach (var prospecto in resultadoProspecto)
            {
                ViewModelProspecto prospectoViewModel = new ViewModelProspecto
                {
                    Id = prospecto.Id,
                    Nombres = prospecto.Nombres,
                    Celular = prospecto.Celular,
                    Correo = prospecto.Correo
                };
                listProspecto.Add(prospectoViewModel);
            }

            return Ok(listProspecto);
        }
    }
}
