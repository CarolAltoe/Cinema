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
                CarregaAtor();
                CarregaFilme();
            }
        }

        void CarregaAtor()
        {
            DSCinemaTableAdapters.AtorTableAdapter ta = new DSCinemaTableAdapters.AtorTableAdapter();
            var result = ta.GetAtor("", "");
            result.Columns.Add("NomeCompleto", typeof(string), "nome + ' ' + sobrenome");
            ddlAtor.DataSource = result;
            ddlAtor.DataTextField = "NomeCompleto";
            ddlAtor.DataValueField = "id";
            ddlAtor.DataBind();
        }

        void CarregaFilme()
        {
            DSCinemaTableAdapters.FilmeTableAdapter ta = new DSCinemaTableAdapters.FilmeTableAdapter();
            var result = ta.GetFilme("", "","", "", 0);
            ddlFilme.DataSource = result;
            ddlFilme.DataTextField = "titulo";
            ddlFilme.DataValueField = "id";
            ddlFilme.DataBind();
        }

        protected void btnCadastrarAtuacao_Click(object sender, EventArgs e)
        {
            int ator = Convert.ToInt32(ddlAtor.SelectedValue);
            int filme = Convert.ToInt32(ddlFilme.SelectedValue);
            int? retorno = null;
            DSCinemaTableAdapters.AtuacaoTableAdapter ta = new DSCinemaTableAdapters.AtuacaoTableAdapter();
            ta.insertAtuacao(ator, filme, ref retorno);
            if (retorno == -1)
            {
                lblMsgErro.Visible = true;
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
        
       
    }
}