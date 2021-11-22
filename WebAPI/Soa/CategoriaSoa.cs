using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebAPI.Models;

namespace WebAPI.Soa
{
    public partial class CategoriaSoa
    {
        public static IEnumerable<Categoria> ListarPorTienda(int id)
        {
            bd_RappiContext db = new bd_RappiContext();
            var list = db.Categoria.Where(x => x.IdTienda == id).ToList();
            return list;
        }
    }
}
