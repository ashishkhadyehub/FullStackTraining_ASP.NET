using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo14April
{
    public partial class UploadFile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (var files in fugallery.PostedFiles)
                {
                    string ext = System.IO.Path.GetExtension(files.FileName);

                    Guid g = Guid.NewGuid();
                    string imageNameid = g.ToString().Substring(10);
                    string imgName = imageNameid + ext;
                    string pathimg = "Photos/" + imgName;

                    files.SaveAs(Server.MapPath(pathimg));

                    string imgPath1 = "ThumbPhotos/" + imgName;

                    int widthC = 600;
                    int heightC = 400;
                    System.IO.Stream streamC = files.InputStream;
                    System.Drawing.Bitmap imageC = new Bitmap(streamC);
                    Bitmap targetC = new Bitmap(widthC, heightC);
                    Graphics graphicC = Graphics.FromImage(targetC);
                    graphicC.DrawImage(imageC, 0, 0, widthC, heightC);

                    targetC.Save(Server.MapPath(imgPath1));


                    con.Close();
                    SqlCommand cmd = new SqlCommand("insert into DBPhotos(ThumbPhoto,OriginalPhoto,SubmitDate) values('" + imgPath1 + "','" + pathimg + "',@dt)", con);
                    cmd.Parameters.AddWithValue("@dt",DateTime.Now);
                    con.Open();
                    cmd.ExecuteNonQuery();


                    
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Gallery Photo/Photos Uploaded,Thank you!','','success');", true);

                }
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