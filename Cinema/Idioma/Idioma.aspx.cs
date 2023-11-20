using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.View
{
    public partial class Idioma : System.Web.UI.Page
    {
        void CarregaIdioma(string descricao)
        {
            DSCinemaTableAdapters.IdiomaTableAdapter ta = new DSCinemaTableAdapters.IdiomaTableAdapter();
            DSCinema.IdiomaDataTable dt = ta.GetIdioma(descricao);

            for (int i = 0; i < dt.Count; i++)
            {
                string editar = "<a href = 'EditarIdioma?id=" + dt[i].id + "'>Editar</a>";
                string deletar = "<a href = 'DeletarIdioma?id=" + dt[i].id + "'>Deletar</a>";
                string link = editar + " | " + deletar;
                dt[i].link = link;

            }

            gvIdioma.DataSource = dt;
            gvIdioma.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            CarregaIdioma("");
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            string descricao = txtDescricaoIdioma.Text;
            CarregaIdioma(descricao);
        }

        protected void btnCriarIdioma_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Idioma/InserirIdioma.aspx");
        }


    }
}