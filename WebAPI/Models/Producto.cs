using System;
using System.Collections.Generic;

namespace WebAPI.Models
{
    public partial class Producto
    {
        public int IdProd { get; set; }
        public int? IdCat { get; set; }
        public string NomProd { get; set; }
        public decimal? Precio { get; set; }
        public string Imagen { get; set; }

        public virtual Categoria IdCatNavigation { get; set; }
    }
}
