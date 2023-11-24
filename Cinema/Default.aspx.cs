using Cinema.Atuacao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddAtuacao_Click(object sender, EventArgs e)
        {
            string ator = txtAtorAtuacao.Text; // nome e sobrenome 
            string filme = txtFilmeAtuacao.Text; // filme e categoria

            DSCinemaTableAdapters.AtuacaoTableAdapter ta = new DSCinemaTableAdapters.AtuacaoTableAdapter();
            DSCinema.AtuacaoDataTable dt = ta.selectAF(ator, filme, filme, ator);

            gvAtuacao.DataSource = dt;
            gvAtuacao.DataBind();
        }

        protected void btnCriarAtuacao_Click(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {

        }
    }
}