using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo14April
{
    public partial class QS2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblname.Text = Request.QueryString[0];
            //lblemail.Text = Request.QueryString[1];

            lblname.Text = Request.QueryString["Name"];
            lblemail.Text = Request.QueryString["Email"];
        }
    }
}