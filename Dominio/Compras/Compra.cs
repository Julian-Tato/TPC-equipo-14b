using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio.Compras
{
    public class Compra
    {
        public int IdCompra { get; set; }
        public int IdProveedor { get; set; } // FK
        public DateTime Fecha { get; set; }
        public decimal Total { get; set; }
        public string MetodoPago { get; set; }

        // Composicion: Lista para manejar los productos de la compra
        public List<DetalleCompra> Detalles { get; set; }
    }
}
