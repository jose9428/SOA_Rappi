using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebAPI.Models;

namespace WebAPI.Soa
{
    public partial class CuentaSoa
    {
        public static int CrearCuenta(Cuenta obj)
        {
            bd_RappiContext db = new bd_RappiContext();
            int res = 0;
            int cantPais = db.Paises.Where(x => x.IdPais == obj.IdPais).Count();

            if (cantPais > 0)
            {
                db.Cuenta.Add(obj);
                res= db.SaveChanges();
            }

            return res;
        }

        public static string AsociarCuenta(AsociarCuenta obj)
        {
            bd_RappiContext db = new bd_RappiContext();
            string msg = "";
            int res = 0;

            string correo = obj.IdCuentaNavigation.Correo;
            Cuenta objCuenta = db.Cuenta.Where(x => x.Correo == correo).FirstOrDefault();

            if (objCuenta != null)
            {
                int existeNumCuenta = db.AsociarCuenta.Where(x => x.NumeroCuenta == obj.NumeroCuenta).Count();

                if (existeNumCuenta > 0)
                {
                    msg = "La cuenta " + obj.NumeroCuenta + " ya se encuentra asociada. Por favor intente con otro numero de cuenta.";
                }
                else
                {
                    obj.IdCuentaNavigation = null; 
                    obj.IdCuenta = objCuenta.IdCuenta;
                    db.AsociarCuenta.Add(obj);
                    res = db.SaveChanges();

                    if (res > 0)
                    {
                        msg = "OK";
                    }
                    else
                    {
                        msg = "No se ha podido asociar cuenta.";
                    }
                }
            }
            else
            {
                msg = "El correo "+correo+" no se encuentra registrado.Por favor primero cree una nueva cuenta, para luego asociarla.";
            }
       
            return msg;
        }
    }
}
