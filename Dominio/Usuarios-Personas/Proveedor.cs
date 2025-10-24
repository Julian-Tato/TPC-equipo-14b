using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio.Usuarios_Personas
{
    public class Proveedor : Entidad
    {
        // IdProveedor es mapeado a EntidadBase.Id
        public int IdProveedor { get; set; }
        public string Seudonimo { get; set; }
        public string RazonSocial { get; set; }
        public string Cuit { get; set; }
    }
}
