using System;
using System.Collections.Generic;

namespace WebAPI.Models
{
    public partial class Tienda
    {
        public Tienda()
        {
            Categoria = new HashSet<Categoria>();
        }

        public int IdTienda { get; set; }
        public string NomTienda { get; set; }
        public string Direccion { get; set; }

        public virtual ICollection<Categoria> Categoria { get; set; }
    }
}
