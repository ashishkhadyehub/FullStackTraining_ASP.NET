using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo14April
{
    public partial class Dropdownevent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblcity.Text = ddlcity.SelectedItem.Text;
        }
    }
}