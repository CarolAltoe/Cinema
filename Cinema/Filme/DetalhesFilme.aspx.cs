using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.Filme
{
    public partial class DetalhesFilme : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregaIdioma();
            }

            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                // carrega dados do filme
                DSCinemaTableAdapters.FilmeTableAdapter ta = new DSCinemaTableAdapters.FilmeTableAdapter();
                DSCinema.FilmeDataTable dt = ta.GetFilmeById(id);
                txtTitulo.Text = dt[0].titulo;
                txtDescricao.Text = dt[0].descricao;
                txtCategoria.Text = dt[0].categoria;
                txtAnoLancamento.Text = Convert.ToString(dt[0].ano_lancamento);
                ddlIdioma.SelectedValue = Convert.ToString(dt[0].idioma_id);
                txtClassificacaoIndicativa.Text = dt[0].classificacao_indicativa;
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Filme.aspx");
        }

        void CarregaIdioma()
        {
            //carrega idioma 
            DSCinemaTableAdapters.IdiomaTableAdapter ta = new DSCinemaTableAdapters.IdiomaTableAdapter();
            var result = ta.GetIdioma("");
            ddlIdioma.DataSource = result;
            ddlIdioma.DataTextField = "descricao";
            ddlIdioma.DataValueField = "id";
            ddlIdioma.DataBind();
        }
    }
}
