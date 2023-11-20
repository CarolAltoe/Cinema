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
            if (retorno == -1)
            {
                lblMsgErro.Visible = true;
            }
            else
            {
                Response.Redirect("Idioma.aspx");
            }

        }
    }
}