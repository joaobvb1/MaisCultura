using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Logging.Abstractions;
using MaisCultura.Biblioteca;

namespace MaisCultura.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class EventosController : ControllerBase
    {
        private readonly ILogger<EventosController> _logger;

        public EventosController(ILogger<EventosController> logger)
        {
            _logger = logger;
        }

        [HttpPost]
        public IEnumerable<Evento> Post(ParametrosFeed parametrosFeed)
        {
            ListaEvento listaEvento = new ListaEvento();

            return listaEvento.Feed(parametrosFeed.usuario);
        }
    }
}