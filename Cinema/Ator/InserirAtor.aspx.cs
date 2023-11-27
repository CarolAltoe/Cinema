using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema
{
    public partial class InserirAtor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarAtor_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text;
            string sobrenome = txtSobrenome.Text;
            int? retorno = null;
            DSCinemaTableAdapters.AtorTableAdapter ta = new DSCinemaTableAdapters.AtorTableAdapter();
            ta.InsertAtor(nome, sobrenome, ref retorno);
            if (retorno == -1) //não permite cadastro, pois ator já existe
            {
                lblMsgErro.Visible = true;
            }
            else // permite cadastro
            {
                Response.Redirect("Ator.aspx");
            }

        }
        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ator.aspx");
        }
    }
}