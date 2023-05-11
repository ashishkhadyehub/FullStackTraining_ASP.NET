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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("insert into Register (Name,Contact,Email,Address,Password,SubmitDate) values (@name,@contact,@email,@adr,@pwd,@dt)",con);
            cmd.Parameters.AddWithValue("@name",txtName.Text);
            cmd.Parameters.AddWithValue("@contact", txtContact.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@adr", ddlCity.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@pwd", txtPassword.Text);
            cmd.Parameters.AddWithValue("@dt", DateTime.Now);
            con.Open();
            cmd.ExecuteNonQuery();
            txtContact.Text = "";
            txtEmail.Text = "";
            txtName.Text = "";
            txtPassword.Text = "";
            ddlCity.SelectedIndex= 0;
            //Response.Write("<script>alert('Registered suceessfully..!')</script>");
            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Registered suceessfully..!','','success');", true);
        }
    }
}