using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo14April
{
    public partial class TextChange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsrno_TextChanged(object sender, EventArgs e)
        {
            if (txtsrno.Text == "001")
            {
                lblname.Text = "ABC";
                lbldes.Text = "Web Developer";
            }
            else if (txtsrno.Text == "002")
            {
                lblname.Text = "PQR";
                lbldes.Text = "Team Lead";
            }
        }
    }
}