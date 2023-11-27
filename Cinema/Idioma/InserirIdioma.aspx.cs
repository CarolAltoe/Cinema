using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema
{
    public partial class InserirIdioma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarIdioma_Click(object sender, EventArgs e)
        {
            string descricao = txtDescricao.Text;
            int? retorno = null;
            DSCinemaTableAdapters.IdiomaTableAdapter ta = new DSCinemaTableAdapters.IdiomaTableAdapter();
            ta.InsertIdioma(descricao, ref retorno);
            if (retorno == -1) //não permite cadastro, pois cai nas condições da procedure
            {
                lblMsgErro.Visible = true;
                timerHideErrorMessage.Enabled = true;
            }
            else //permite cadastro
            {
                Response.Redirect("Idioma.aspx");
            }

        }
        protected void timerHideErrorMessage_Tick(object sender, EventArgs e)
        {
            // Esconde a mensagem de erro quando o Timer atinge o intervalo especificado
            lblMsgErro.Visible = false;

            // Desabilita o Timer após esconder a mensagem
            timerHideErrorMessage.Enabled = false;
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Idioma.aspx");
        }
    }
}