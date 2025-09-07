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
    public partial class adminD : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["EMS"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                getcon();
            }
            void getcon()
            {
                con = new SqlConnection(s);
                con.Open();
            }
        }
    }
}