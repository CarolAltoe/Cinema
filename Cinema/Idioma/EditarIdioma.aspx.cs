using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.Idioma
{
    public partial class EditarIdioma : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                DSCinemaTableAdapters.IdiomaTableAdapter ta = new DSCinemaTableAdapters.IdiomaTableAdapter();
                DSCinema.IdiomaDataTable dt = ta.GetIdiomaById(id);
                txtDescricao.Text = dt[0].descricao;
            }
        }

        protected void btnAlterarIdioma_Click(object sender, EventArgs e)
        {
            int? resposta = null;
            DSCinemaTableAdapters.IdiomaTableAdapter ta = new DSCinemaTableAdapters.IdiomaTableAdapter();
            ta.UpdateIdioma(id, txtDescricao.Text, ref resposta);
            if (resposta == 0) // permite edição
            {
                Response.Redirect("Idioma.aspx");
            }
            else //não permite edição
            {
                lblMsgErro.Visible = true;
            }
        }
    }
}