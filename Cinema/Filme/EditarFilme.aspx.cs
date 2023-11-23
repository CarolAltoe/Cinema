using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.Filme
{
    public partial class EditarFilme : System.Web.UI.Page
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

        protected void btnEditarFilme_Click(object sender, EventArgs e)
        {
            int? resposta = null;
            string titulo = txtTitulo.Text;
            int ano_lancamento = Convert.ToInt32(txtAnoLancamento.Text);
            string descricao = txtDescricao.Text;
            string categoria = txtCategoria.Text;
            string classificacao_indicativa = txtClassificacaoIndicativa.Text;
            int idioma = Convert.ToInt32(ddlIdioma.SelectedValue);
            DSCinemaTableAdapters.FilmeTableAdapter ta = new DSCinemaTableAdapters.FilmeTableAdapter();
            ta.UpdateFilme(id, titulo, descricao, ano_lancamento, categoria, classificacao_indicativa, idioma, ref resposta);
            if (resposta == 0) // permite edição
            {
                Response.Redirect("Filme.aspx");
            }
            else //não permite edição
            {
                Response.Redirect("Filme.aspx");
            }
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
    }
}
