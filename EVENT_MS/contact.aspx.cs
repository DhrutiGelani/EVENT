using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVENT_MS
{
    public partial class contact : System.Web.UI.Page
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
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (btnSubmit.Text == "Send Message")
            {
                getcon();

                cmd = new SqlCommand("INSERT INTO Contact (Name, Email, Subject, Message) VALUES ('" + txtName.Text + "', '" + txtEmail.Text + "', '" + txtSubject.Text + "', '" + txtMessage.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();

            }
        }
    }
}