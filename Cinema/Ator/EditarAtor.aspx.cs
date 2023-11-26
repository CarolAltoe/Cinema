using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.Ator
{
    public partial class EditarAtor : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                DSCinemaTableAdapters.AtorTableAdapter ta = new DSCinemaTableAdapters.AtorTableAdapter();
                DSCinema.AtorDataTable dt = ta.GetAtorById(id);
                txtNome.Text = dt[0].nome;
                txtSobrenome.Text = dt[0].sobrenome;
            }
        }

        protected void btnAlterarAtor_Click(object sender, EventArgs e)
        {
            int? resposta = null;
            DSCinemaTableAdapters.AtorTableAdapter ta = new DSCinemaTableAdapters.AtorTableAdapter();
            ta.EditarAtor(id, txtNome.Text, txtSobrenome.Text, ref resposta);
            if (resposta == 0) // permite edição
            {
                Response.Redirect("Ator.aspx");
            }
            else //não permite edição
            {
                lblMsgErro.Visible = true;
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ator.aspx");
        }
    }
}