using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kalkulatorr
{
    public partial class MyData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonVratiMe_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kalkulator.aspx");
        }
    }
}