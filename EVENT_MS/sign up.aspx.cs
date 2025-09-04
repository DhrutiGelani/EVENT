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
    public partial class sign_up : System.Web.UI.Page
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
            txtPassword.Text = "";
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            if (btnSignup.Text == "Sign up")
            {
                getcon();

                cmd = new SqlCommand("insert into signup(UserName,PassWord,ConfirmPassword) values('" + txtUsername.Text + "' , '" + txtPassword.Text + "' ,  '" + txtConfirmPassword.Text + "' ')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("login1.aspx");

            }
        }
    }
}