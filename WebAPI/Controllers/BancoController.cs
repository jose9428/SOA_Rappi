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
    public class BancoController : ControllerBase
    {

        [HttpGet("listar")]
        public IEnumerable<Banco> ListarTodos()
        {
            return BancoSoa.ListarTodos();
        }
    }
}
