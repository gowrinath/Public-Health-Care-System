using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class phrmaintaindetails : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = (string)Session["id"];
        Label4.Text = (string)Session["name"];

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["phr"]);
        con.Open();

        SqlDataAdapter sd = new SqlDataAdapter("select oid,oname,fname,filee from uploadfiles where oid='" + Label2.Text + "' and oname='" + Label4.Text + "'", con);
        DataSet ds = new DataSet();
        sd.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            MsgBox.Show("No Data Found");
        }



        con.Close();
        bind();
    }
    protected void bind()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["phr"]);
        con.Open();

        SqlDataAdapter sd = new SqlDataAdapter("select oid,oname,fname,filee from uploadfiles where oid='" + Label2.Text + "' and oname='" + Label4.Text + "'", con);
        DataSet ds = new DataSet();
        sd.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            MsgBox.Show("No Data Found");
        }



        con.Close();
    }
    }






