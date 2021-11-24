using System;
using System.Collections.Generic;

namespace WebAPI.Models
{
    public partial class Banco
    {
        public Banco()
        {
            AsociarCuenta = new HashSet<AsociarCuenta>();
        }

        public int Idbanco { get; set; }
        public string NomBanco { get; set; }

        public virtual ICollection<AsociarCuenta> AsociarCuenta { get; set; }
    }
}
