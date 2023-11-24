using Cinema.DSCinemaTableAdapters;
using Cinema.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.Atuacao
{
    public partial class Atuacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnCriarAtuacao_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Atuacao/Atuacao.aspx");
        }
    }
}