using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo14April
{
    public partial class ShowData : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            getdata();
        }

        protected void getdata()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("Select top 1 * from Register", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if(sdr.HasRows)
            {
                sdr.Read();
                lblName.Text = sdr.GetValue(1).ToString();
                lblContact.Text = sdr.GetValue(2).ToString();
                lblEmail.Text = sdr.GetValue(3).ToString();
            }

        }
    }
}