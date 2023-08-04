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
    public partial class LitExample : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            showphotos();
        }

        protected void showphotos()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select * from DBPhotos", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if(sdr.HasRows)
            {
                while(sdr.Read())
                {
                    lgallery.Text += "<div style='margin-bottom:15px' class='col-sm-12 col-md-4'><a class='lightbox' href='"+sdr.GetValue(2)+"'><img src='"+sdr.GetValue(1)+"' style='width: 100%' /></a></div>";
                }
            }
        }
    }
}