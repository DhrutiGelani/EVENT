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
    public partial class add_event : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["EMS"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        string fnm;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void imgupload()
        {
            if (flpimg.HasFile)
            {
                fnm = "images/" + flpimg.FileName;
                flpimg.SaveAs(Server.MapPath(fnm));
            }
        }
        void select()
        {
            getcon();
            da = new SqlDataAdapter("select * from emp_tbl where Id='" + ViewState["Id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            //Textnm.Text = ds.Tables[0].Rows[0][1].ToString();
            //Texteml.Text = ds.Tables[0].Rows[0][3].ToString();
            //RadioButtonList1.Text = ds.Tables[0].Rows[0][2].ToString();
            //DropDownList1.SelectedValue = ds.Tables[0].Rows[0][4].ToString();
        }
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from emp_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        void clear()
        {
            Textnm.Text = "";
            Textdes.Text = "";
            Textloc.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "add event")
            {
                getcon();
                imgupload();
                cmd = new SqlCommand("insert into events(eve_name,eve_des,eve_loc,eve_img) values('" + Textnm.Text + "','" + Textdes.Text + "','" + Textloc.Text + "','" + fnm + "')", con);
                cmd.ExecuteNonQuery();
                clear();
               

            }
        }
    }
}