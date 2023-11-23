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

        void CarregaFilme(string titulo, string descricao, string ano_lancamento, string categoria, string classificacao_indicativa, int idioma_id )
        {
            DSCinemaTableAdapters.FilmeTableAdapter ta = new DSCinemaTableAdapters.FilmeTableAdapter();
            DSCinema.FilmeDataTable dt = ta.GetFilme(titulo, descricao, ano_lancamento, categoria, classificacao_indicativa, idioma_id);

            for (int i = 0; i < dt.Count; i++)
            {
                string editar = "<a href = 'EditarFilme?id=" + dt[i].id + "'>Editar</a>";
                string deletar = "<a href = 'DeletarFilme?id=" + dt[i].id + "'>Deletar</a>";
                string link = editar + " | " + deletar;
                dt[i].link = link;

            }

            gvFilme.DataSource = dt;
            gvFilme.DataBind();
        }

        void CarregaIdioma()
        {
            DSCinemaTableAdapters.IdiomaTableAdapter ta = new DSCinemaTableAdapters.IdiomaTableAdapter();
            var result = ta.GetIdioma("");
            ddlIdioma.DataSource = result;
            ddlIdioma.DataTextField = "descricao";
            ddlIdioma.DataValueField = "id";
            ddlIdioma.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregaIdioma();
            }
           }


        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            string titulo = txtTituloFilme.Text;
            string descricao = txtDescricaoFilme.Text;
            string ano_lancamento = txtAnoLancamento.Text;
            string categoria = txtCategoriaFilme.Text;
            string classificacao_indicativa = txtClassificacaoIndicativa.Text;
            int idioma = Convert.ToInt32(ddlIdioma.SelectedValue);
            CarregaFilme(titulo, descricao, ano_lancamento, categoria, classificacao_indicativa, idioma);
        }

        protected void btnCriarFilme_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Filme/InserirFilme.aspx");
        }


    }
}