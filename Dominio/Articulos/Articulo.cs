﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio.Articulos
{
    internal class Articulo
    {
        public int IDArticulo { get; set; }
        public string CodigoArticulo { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public Categorias Categorias { get; set; }
        public Marcas Marca { get; set; }
        public decimal Precio { get; set; }
        public Imagenes Imagen { get; set; }

        public List<string> Imagenes { get; set; } = new List<string>();
    }
}
