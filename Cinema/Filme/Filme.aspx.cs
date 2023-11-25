using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.View
{
    public partial class Filme : System.Web.UI.Page
    {

        void CarregaFilme(string titulo, string categoria, string classificacao_indicativa )
        {
            DSCinemaTableAdapters.FilmeTableAdapter ta = new DSCinemaTableAdapters.FilmeTableAdapter();
            DSCinema.FilmeDataTable dt = ta.GetFilme(titulo, categoria, classificacao_indicativa);

            for (int i = 0; i < dt.Count; i++)
            {
                string editar = "<a href = 'EditarFilme?id=" + dt[i].id + "'>Editar</a>";
                string deletar = "<a href = 'DeletarFilme?id=" + dt[i].id + "'>Deletar</a>";
                string detalhes = "<a href = 'DetalhesFilme?id=" + dt[i].id + "'>Detalhes</a>";
                string link = editar + " | " + deletar + " | " + detalhes;
                dt[i].link = link;

            }

            gvFilme.DataSource = dt;
            gvFilme.DataBind();
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregaFilme("", "", "");
            }
           }    


        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            string titulo = txtTituloFilme.Text;
            string categoria = txtCategoriaFilme.Text;
            string classificacao_indicativa = txtClassificacaoIndicativa.Text;
            CarregaFilme(titulo, categoria, classificacao_indicativa);
        }

        protected void btnCriarFilme_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Filme/InserirFilme.aspx");
        }


    }
}