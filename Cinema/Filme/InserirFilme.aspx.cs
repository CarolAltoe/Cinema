using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema
{
    public partial class InserirFilme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregaIdioma();
            }
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

        protected void btnCadastrarFilme_Click(object sender, EventArgs e)
        {
            string titulo = txtTitulo.Text;
            int ano_lancamento = Convert.ToInt32(txtAnoLancamento.Text);
            string descricao = txtDescricao.Text;
            string categoria = txtCategoria.Text;
            string classificacao_indicativa = txtClassificacaoIndicativa.Text;
            int idioma = Convert.ToInt32(ddlIdioma.SelectedValue);
            int? retorno = null;
            DSCinemaTableAdapters.FilmeTableAdapter ta = new DSCinemaTableAdapters.FilmeTableAdapter();
            ta.InsertFilme(titulo, descricao, ano_lancamento, categoria, classificacao_indicativa, idioma, ref retorno);
            if (retorno == -1) // não permite inserir pois cai nas condições da procedure
            {
                lblMsgErro.Visible = true;
            }
            else //permite inserir
            {
                Response.Redirect("Filme.aspx"); 
            }

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Filme.aspx");
        }
    }
}