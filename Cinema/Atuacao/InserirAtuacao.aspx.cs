using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.Atuacao
{
    public partial class InserirAtuacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //CarregaAtor();
                //CarregarFilme();
            }
        }

        protected void btnCadastrarAtuacao_Click(object sender, EventArgs e)
        {

        }
        /*
        void CarregaAtor()
        {
            DSCinemaTableAdapters.AtorTableAdapter ta = new DSCinemaTableAdapters.AtorTableAdapter();
            var result = ta.GetAtor("");
            ddlAtor.DataSource = result;
            ddlAtor.DataTextField = "descricao";
            ddlAtor.DataValueField = "id";
            ddlAtor.DataBind();

        }

        void CarregaFilme()
        {
            DSCinemaTableAdapters.IdiomaTableAdapter ta = new DSCinemaTableAdapters.IdiomaTableAdapter();
            var result = ta.GetAtor("");
            ddlFilme.DataSource = result;
            ddlFilme.DataTextField = "descricao";
            ddlFilme.DataValueField = "id";
            ddlFilme.DataBind();
        }

        */
    }
}