using CRM.App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Json;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace CRM.App.Servicio
{
    public class SyncService
    {
        private HttpClient client;
        public static List<ProspectoModel> ListaProspecto { get; private set; }
        private static JsonSerializerOptions serializerOptions;

        public SyncService()
        {
            client = new HttpClient();
        }

        public async Task<List<ProspectoModel>> SendDataAsync(bool filter,int idProspecto = 0)
        {
            ListaProspecto = new List<ProspectoModel>();

            try
            {
                var uri = "https://localhost:44304/Prospecto/api/listadoProspecto";
                var response = await client.GetAsync(uri);

                if (response.IsSuccessStatusCode)
                {
                    string respuesta = await response.Content.ReadAsStringAsync();
                    ListaProspecto = JsonSerializer.Deserialize<List<ProspectoModel>>(respuesta, serializerOptions);
                }
                else
                {
                    ListaProspecto = null;
                }
            }
            catch (Exception ex)
            {
                ListaProspecto = null;
            }

            return ListaProspecto;
        }


    }
}
