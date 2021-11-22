using System;
using System.Collections.Generic;

namespace WebAPI.Models
{
    public partial class Cuenta
    {
        public Cuenta()
        {
            AsociarCuenta = new HashSet<AsociarCuenta>();
        }

        public int IdCuenta { get; set; }
        public int? IdPais { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string NumCelular { get; set; }
        public string Correo { get; set; }
        public string Contrasennia { get; set; }

        public virtual Paises IdPaisNavigation { get; set; }
        public virtual ICollection<AsociarCuenta> AsociarCuenta { get; set; }
    }
}
