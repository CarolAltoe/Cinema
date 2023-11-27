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
        /*
            decisão de projeto de criar uma pasta para armazenar os arquivos referentes a atuação
            para que os mesmos não ficassem na raíz do projeto, causando desorganização e dificuldade 
            de orientação. Obx: O arquivo para listar as atuações é o Default.aspx, visto que é o arquivo 
            inicial do projeto, permaneceu na raiz, fora da pasta de atuações
        */

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
            //carrega dados de ator
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
            //carrega dados de filme
            DSCinemaTableAdapters.FilmeTableAdapter ta = new DSCinemaTableAdapters.FilmeTableAdapter();
            var result = ta.GetFilme("", "","");
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
            if (retorno == -1) //não permite cadastrar pois cai nas condições da procedure
            {
                lblMsgErro.Visible = true;
            }
            else //permite cadaastrar
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}