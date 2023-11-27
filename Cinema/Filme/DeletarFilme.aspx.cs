using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.Filme
{
    public partial class DeletarFilme : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {    //carrega filme, a ser excluído, na tela
                DSCinemaTableAdapters.FilmeTableAdapter ta = new DSCinemaTableAdapters.FilmeTableAdapter();
                DSCinema.FilmeDataTable dt = ta.GetFilmeById(id);
                lblNomeFilme.Text = dt[0].titulo;
            }
        }

        protected void btnSim_Click(object sender, EventArgs e)
        {
            int? resposta = null;
            DSCinemaTableAdapters.FilmeTableAdapter ta = new DSCinemaTableAdapters.FilmeTableAdapter();
            ta.DeleteFilme(id, ref resposta);
            if (resposta == 0) //Filme com assocociação (não deixa excluir)
            {
                lblMsgErro.Visible = true;
            }
            else //Filme sem associação (deixa excluir)
            {
                Response.Redirect("Filme.aspx");
            }

        }

        protected void btnNão_Click(object sender, EventArgs e)
        {
            Response.Redirect("Filme.aspx");
        }
    }
}