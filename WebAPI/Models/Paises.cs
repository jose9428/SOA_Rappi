using System;
using System.Collections.Generic;

namespace WebAPI.Models
{
    public partial class Paises
    {
        public Paises()
        {
            Cuenta = new HashSet<Cuenta>();
        }

        public int IdPais { get; set; }
        public string Iso { get; set; }
        public string NomPais { get; set; }

        public virtual ICollection<Cuenta> Cuenta { get; set; }
    }
}
