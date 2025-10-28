using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio.Usuarios_Personas
{
    public class Cliente : Entidad
    {
        // IdCliente es mapeado a EntidadBase.Id
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Dni { get; set; }
    }
}
