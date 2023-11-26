using Cinema.Atuacao;
using Cinema.View;
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
            if (!IsPostBack)
            {
                //CarregaAtor();
                //CarregaFilme();
                //CarregaAtuacao();
            }
        }

      

        protected void btnCriarAtuacao_Click(object sender, EventArgs e)
        {
            Response.Redirect("Atuacao/InserirAtuacao.aspx");
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            /*
           // string ator = txtAtorAtuacao.Text;
            //string titulo = txtFilmeAtuacao.Text;
            int ator = Convert.ToInt32(txtAtorAtuacao.Text);
           // string titulo = txtFilmeAtuacao.Text;
            // string descricao = txtDescricaoFilme.Text;
            //string categoria = txtCategoriaFilme.Text;

            // CarregaAtuacao(CarregaFilme(), CarregaAtor()) ;
            // CarregaFilme(titulo, descricao, categoria, classificacao_indicativa, idioma);

            // DSCinemaTableAdapters.AtuacaoTableAdapter ta = new DSCinemaTableAdapters.AtuacaoTableAdapter();
            // var result = ta.SelectAF("","", "", "");


            DSCinemaTableAdapters.AtuacaoTableAdapter ta = new DSCinemaTableAdapters.AtuacaoTableAdapter();
            DSCinema.AtuacaoDataTable dt = ta.selectAF(ator, titulo);

            for (int i = 0; i < dt.Count; i++)
            {
                string editar = "<a href = 'EditarFilme?id=" + dt[i].id + "'>Editar</a>";
                string deletar = "<a href = 'DeletarFilme?id=" + dt[i].id + "'>Deletar</a>";
                string link = editar + " | " + deletar;
               // dt[i].link = link;

            }

            gvAtuacao.DataSource = dt;
            gvAtuacao.DataBind();

            */
        }
    }
}

/*
 
 
 string ator = txtAtorAtuacao.Text; // nome e sobrenome 
            string filme = txtFilmeAtuacao.Text; // filme e categoria
            int? retorno = null;
            DSCinemaTableAdapters.AtuacaoTableAdapter ta = new DSCinemaTableAdapters.AtuacaoTableAdapter();
            DSCinema.AtuacaoDataTable dt = ta.SelectAtuacao(ator, filme, ref retorno);

            gvAtuacao.DataSource = dt;
            gvAtuacao.DataBind();
*/

/*
 

  void CarregaAtor(string nome, string sobrenome)
        {
            DSCinemaTableAdapters.AtorTableAdapter ta = new DSCinemaTableAdapters.AtorTableAdapter();
            DSCinema.AtorDataTable dt = ta.GetAtor(nome, sobrenome);

            for (int i = 0; i < dt.Count; i++)
            {
                string editar = "<a href = 'EditarAtor?id=" + dt[i].id + "'>Editar</a>";
                string deletar = "<a href = 'DeletarAtor?id=" + dt[i].id + "'>Deletar</a>";
                string link = editar + " | " + deletar;
                dt[i].link = link;

            }

           // gvAtor.DataSource = dt;
           // gvAtor.DataBind();
        }

        void CarregaFilme(string titulo, string descricao, string categoria, string classificacao_indicativa, int idioma_id)
        {
            DSCinemaTableAdapters.FilmeTableAdapter ta = new DSCinemaTableAdapters.FilmeTableAdapter();
            DSCinema.FilmeDataTable dt = ta.GetFilme(titulo, descricao, categoria, classificacao_indicativa, idioma_id);

            for (int i = 0; i < dt.Count; i++)
            {
                string editar = "<a href = 'EditarFilme?id=" + dt[i].id + "'>Editar</a>";
                string deletar = "<a href = 'DeletarFilme?id=" + dt[i].id + "'>Deletar</a>";
                string link = editar + " | " + deletar;
                dt[i].link = link;

            }

           // gvFilme.DataSource = dt;
           // gvFilme.DataBind();
        }
 
 
 */