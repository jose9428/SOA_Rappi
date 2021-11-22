using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebAPI.Models;

namespace WebAPI.Soa
{
    public partial class PaisesSoa
    {
        public static IEnumerable<Paises> ListarTodos()
        {
            bd_RappiContext db = new bd_RappiContext();
            var list = db.Paises.ToList();
            return list;
        }
    }
}
