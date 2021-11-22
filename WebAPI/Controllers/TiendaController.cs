using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebAPI.Models;
using WebAPI.Soa;

namespace WebAPI.Controllers
{
    [EnableCors("MyPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class TiendaController : ControllerBase
    {

        [HttpGet("listar")]
        public IEnumerable<Tienda> ListarTodos()
        {
            return TiendaSoa.ListarTodos();
        }
    }
}
