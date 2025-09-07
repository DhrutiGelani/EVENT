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
    public partial class AdminLogin : System.Web.UI.Page
    {

        string s = ConfigurationManager.ConnectionStrings["EMS"].ConnectionString;

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String fnm;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text != null && txtPassword.Text != null)
            {
                getcon();
                cmd = new SqlCommand("select count(*) from adminR where Email='" + txtEmail.Text + "' and Password='" + txtPassword.Text + "'", con);

                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    Session["admin"] = txtEmail.Text;
                    Response.Redirect("adminD.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid User')</script>");
                }
            }
        }
    }
}