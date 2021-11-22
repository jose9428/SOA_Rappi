using System;
using System.Collections.Generic;

namespace WebAPI.Models
{
    public partial class Categoria
    {
        public Categoria()
        {
            Producto = new HashSet<Producto>();
        }

        public int IdCat { get; set; }
        public int? IdTienda { get; set; }
        public string NomCat { get; set; }
        public string Imagen { get; set; }

        public virtual Tienda IdTiendaNavigation { get; set; }
        public virtual ICollection<Producto> Producto { get; set; }
    }
}
