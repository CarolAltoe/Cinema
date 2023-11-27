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
          
        }


        protected void btnCriarAtuacao_Click(object sender, EventArgs e)
        {
            Response.Redirect("Atuacao/InserirAtuacao.aspx");
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
             string ator = txtAtorAtuacao.Text;
             string titulo = txtFilmeAtuacao.Text;
             CarregaAtuacao(ator, titulo);
        }

        private void CarregaAtuacao(string ator, string titulo)
        {
            //carrega dados das atuações
            DSCinemaTableAdapters.AtuacaoTableAdapter ta = new DSCinemaTableAdapters.AtuacaoTableAdapter();
            DSCinema.AtuacaoDataTable dt = ta.SelectAtuacao(ator, titulo);

            for (int i = 0; i < dt.Count; i++)//contrói link para visualizar detalhes dos filmes associados
            {

                string nomeCompleto = dt.Rows[i]["nome"] + " " + dt.Rows[i]["sobrenome"];
                /*
                  decisão de projeto de colocar link para detalhes do filme com intuito de não deixar a grid de
                  atuação poluída ou incompleta. Não viu-se necessidade de uma página separada 
                  para exibir detalhes da atuação uma vez que todos os dados de atores são exibidos na grid de atuação
                  e seria repetitivo ter outro arquivo similar para trazer os dados de filme (uma vez que a página
                  DetalhesFilme já faz isso). Caso houvessem mais atributos em ator, seria, sim, boa prática ter
                  uma página separada para exibir detalhes da atuação.
                */
                string detalhes = "<a href = 'Filme/DetalhesFilme?id=" + dt[i].filme_id + "'>Detalhes do filme</a>";
                string link = detalhes; 

                dt.Rows[i]["nome"] = nomeCompleto;
                dt[i].link = link;

            }

            gvAtuacao.DataSource = dt;
            gvAtuacao.DataBind();
        }
    }
}