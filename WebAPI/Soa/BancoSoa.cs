using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebAPI.Models;

namespace WebAPI.Soa
{
    public partial class BancoSoa
    {
        public static IEnumerable<Banco> ListarTodos()
        {
            bd_RappiContext db = new bd_RappiContext();
            var list = db.Banco.ToList();
            return list;
        }
    }
}
