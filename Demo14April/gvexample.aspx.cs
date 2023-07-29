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
    public partial class gvexample : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gvdata.DataSource = getdata();
                gvdata.DataBind();
            }
        }

        protected DataSet getdata()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select * from EmpRegister order by Srno ASC", con);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            con.Close();
            return ds;
        }

        protected void gvdata_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvdata.EditIndex = e.NewEditIndex;
            gvdata.DataSource = getdata();
            gvdata.DataBind();
        }

        protected void gvdata_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvdata.EditIndex = -1;
            gvdata.DataSource = getdata();
            gvdata.DataBind();
        }

        protected void gvdata_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                con.Close();
                GridViewRow row = gvdata.Rows[e.RowIndex];
                string name = (row.FindControl("txtname") as TextBox).Text;
                string email = (row.FindControl("txtemail") as TextBox).Text;
                string contact = (row.FindControl("txtcontact") as TextBox).Text;


                SqlCommand cmd = new SqlCommand("Update EmpRegister set Name='" + name + "',Email='" + email + "',Contact='"+contact+"' where Srno='" + gvdata.DataKeys[e.RowIndex].Value + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                gvdata.EditIndex = -1;
                gvdata.DataSource = getdata();
                gvdata.DataBind();
                
            }
            catch (Exception es)
            {

            }

        }

        protected void gvdata_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.Close();
            GridViewRow row = gvdata.Rows[e.RowIndex];

            SqlCommand cmd = new SqlCommand("Delete from EmpRegister where Srno='" + gvdata.DataKeys[e.RowIndex].Value + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            gvdata.EditIndex = -1;
            gvdata.DataSource = getdata();
            gvdata.DataBind();
        }
    }
}