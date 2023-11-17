using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.View
{
    public partial class Ator : System.Web.UI.Page
    {
        void CarregaAtor(string nome, string sobrenome)
        {
            DSCinemaTableAdapters.AtorTableAdapter ta = new DSCinemaTableAdapters.AtorTableAdapter();
            DSCinema.AtorDataTable dt = ta.GetAtor(nome, sobrenome);

            for (int i = 0; i <dt.Count; i++)
            {
                string editar = "<a href = 'EditarAtor?id=" + dt[i].id + "'>Editar</a>";
                string deletar = "<a href = 'DeletarAtor?id=" + dt[i].id + "'>Deletar</a>";
                string link = editar + " | " + deletar;
                dt[i].link = link;

            }

            gvAtor.DataSource = dt;
            gvAtor.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            CarregaAtor("", "");
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            string nome = txtNomeAtor.Text;
            string sobrenome = txtSobreNomeAtor.Text;
            CarregaAtor(nome, sobrenome);
        }

        protected void btnCriarAtor_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Ator/InserirAtor.aspx");
        }

        
    }
}