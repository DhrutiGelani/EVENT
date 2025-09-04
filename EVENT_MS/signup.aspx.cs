using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVENT_MS
{
    public partial class signup : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["EMS"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void clear()
        {
            txtName.Text = "";
            txtPassword.Text = "";
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (btnRegister.Text == "Register")
            {
                getcon();

                cmd = new SqlCommand("INSERT INTO signup (UserName, Email, Password, ConfirmPassword) VALUES ('" + txtName.Text + "', '" + txtEmail.Text + "', '" + txtPassword.Text + "', '" + txtConfirmPassword.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("login.aspx");

            }
        }
    }
}