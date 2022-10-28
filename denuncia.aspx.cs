﻿using AlfaMaisCultura.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MenosCultura
{
    public partial class denuncia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListaEvento ListaEvento = new ListaEvento();
            ListaUsuario ListaUsuario = new ListaUsuario();
            Usuario Usuario = ListaUsuario.Buscar(Request.QueryString["u"]);
            List<AlfaMaisCultura.Denuncia> Denuncias = ListaUsuario.BuscarDenuncias(Usuario.Codigo);
            Evento Evento = ListaEvento.Buscar(Denuncias[0].CodigoEvento);

            lblUser.Text = Usuario.Codigo;
            lblNmEvento.Text = Evento.Titulo;
            lblMotivo.Text = Denuncias[0].Motivo.Nome;

               ///////////////////////////////
             //                             //
            //  Pensar em como implementar  //
            //  a classe ser aplicável      //
            //  tanto na busca por eventos  //
            //  quanto na por usuario.      //
            //                              //
            //////////////////////////////////
        }
    }
}