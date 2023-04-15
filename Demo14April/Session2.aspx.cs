using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo14April
{
    public partial class Session2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            wc.Text = Session["Name"].ToString();
            lblName.Text = Session["Name"].ToString();
            lblContact.Text = Session["Contact"].ToString();
        }
    }
}