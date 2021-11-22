using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebAPI.Models;

namespace WebAPI.Soa
{
    public partial class ProductoSoa
    {
        public static IEnumerable<Producto> ListarPorCategoria(int id)
        {
            bd_RappiContext db = new bd_RappiContext();
            var list = db.Producto.Where(x => x.IdCat == id).ToList();
            return list;
        }
    }
}
