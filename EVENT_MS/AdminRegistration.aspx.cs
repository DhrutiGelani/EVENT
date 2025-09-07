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
using System.Xml.Linq;

namespace EVENT_MS
{
    public partial class AdminRegistration : System.Web.UI.Page
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
            txtUsername.Text = "";
            txtEmail.Text = "";

            txtPassword.Text = "";
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (btnRegister.Text == "Register")
            {
                getcon();

                cmd = new SqlCommand("INSERT INTO adminR (UserName, Email, Password, ConfirmPassword) VALUES ('" + txtUsername.Text + "', '" + txtEmail.Text + "', '" + txtPassword.Text + "', '" + txtConfirmPassword.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("AdminLogin.aspx");

            }
        }
    }
}