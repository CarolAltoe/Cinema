using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.View
{
    public partial class Ator : System.Web.UI.Page
    {
        void CarregaAtor(string nome, string sobrenome)
        {
            DSCinemaTableAdapters.AtorTableAdapter ta = new DSCinemaTableAdapters.AtorTableAdapter();
            DSCinema.AtorDataTable dt = ta.GetAtor(nome, sobrenome);
            gvAtor.DataSource = dt;
            gvAtor.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            CarregaAtor("", "");
        }
    }
}