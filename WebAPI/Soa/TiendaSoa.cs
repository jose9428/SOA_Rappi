using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebAPI.Models;

namespace WebAPI.Soa
{
    public partial class TiendaSoa
    {
        public static IEnumerable<Tienda> ListarTodos()
        {
            bd_RappiContext db = new bd_RappiContext();
            var list = db.Tienda.ToList();
            return list;
        }
    }
}
