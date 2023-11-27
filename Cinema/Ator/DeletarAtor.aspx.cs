using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.Ator
{
    public partial class DeletarAtor : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                //carrega o nome+sobrenome do ator, a ser excluído, na tela
                DSCinemaTableAdapters.AtorTableAdapter ta = new DSCinemaTableAdapters.AtorTableAdapter();
                DSCinema.AtorDataTable dt = ta.GetAtorById(id);
                lblNomeAtor.Text = dt[0].nome + " " + dt[0].sobrenome; 
            }
        }

        protected void btnSim_Click(object sender, EventArgs e)
        {
            int? resposta = null;
            DSCinemaTableAdapters.AtorTableAdapter ta = new DSCinemaTableAdapters.AtorTableAdapter();
            ta.DeleteAtor(id, ref resposta);
            if (resposta == 0) //ator com assocociação (não deixa excluir)
            {
                lblMsgErro.Visible = true;
            }
            else //ator sem associação (deixa excluir)
            {
                Response.Redirect("Ator.aspx");
            }
            
        }

        protected void btnNão_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ator.aspx"); 
        }
    }
}