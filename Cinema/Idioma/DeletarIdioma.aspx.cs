using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.Idioma
{
    public partial class DeletarIdioma : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                DSCinemaTableAdapters.IdiomaTableAdapter ta = new DSCinemaTableAdapters.IdiomaTableAdapter();
                DSCinema.IdiomaDataTable dt = ta.GetIdiomaById(id);
                lblDescricao.Text = dt[0].descricao;
            }
        }

        protected void btnSim_Click(object sender, EventArgs e)
        {
            int? resposta = null;
            DSCinemaTableAdapters.IdiomaTableAdapter ta = new DSCinemaTableAdapters.IdiomaTableAdapter();
            ta.DeleteIdioma(id, ref resposta);
            if (resposta == 0) //Idioma com assocociação (não deixa excluir)
            {
                Response.Write("Volta que vai dar ruim!");
            }
            else //Idioma sem associação (deixa excluir)
            {
                Response.Redirect("Idioma.aspx");
            }

        }

        protected void btnNão_Click(object sender, EventArgs e)
        {
            Response.Redirect("Idioma.aspx");
        }
    }
}