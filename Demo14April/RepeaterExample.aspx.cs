using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo14April
{
    public partial class RepeaterExample : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            showgalleryphotos();
        }

        protected void showgalleryphotos()
        {
            try
            {
                
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand("Select Srno,ThumbPhoto from DBPhotos", con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            rgallery.DataSource = dt;
                            rgallery.DataBind();
                        }
                    }
                }
            }
            catch (Exception es)
            {

            }
        }

        protected void lbtndelete_Click(object sender, EventArgs e)
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
                SqlConnection con1 = new SqlConnection(constr);

                RepeaterItem a = (sender as LinkButton).Parent as RepeaterItem;

                int b = int.Parse((a.FindControl("photoid") as Label).Text.ToString());
                con1.Close();
                string qrys = "Select ThumbPhoto from DBPhotos where Srno=" + b;
                con1.Open();
                SqlCommand cmd1 = new SqlCommand(qrys, con1);
                SqlDataReader sdr = cmd1.ExecuteReader();
                if (sdr.HasRows)
                {
                    sdr.Read();
                    string thumbpath = sdr.GetValue(0).ToString();

                    System.IO.File.Delete(Server.MapPath(thumbpath));
                }
                con1.Close();
                string qry = "delete from DBPhotos where Srno=" + b;
                SqlCommand cmd = new SqlCommand(qry, con1);
                con1.Open();
                cmd.ExecuteNonQuery();


                string message = "Photo Deleted Successfully!";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "');";
                script += "window.location = '";
                script += Request.Url.AbsoluteUri;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            }
            catch (Exception es)
            {

            }
            finally
            {
                con.Close();
            }
        }
    }
}