using System;
using System.Collections.Generic;

namespace WebAPI.Models
{
    public partial class AsociarCuenta
    {
        public int IdAsociarCuenta { get; set; }
        public int? IdCuenta { get; set; }
        public string NumeroCuenta { get; set; }
        public string NumeroInterbancario { get; set; }
        public string DomicilioFiscal { get; set; }
        public string Telefono { get; set; }
        public int? Idbanco { get; set; }

        public virtual Cuenta IdCuentaNavigation { get; set; }
        public virtual Banco IdbancoNavigation { get; set; }
    }
}
