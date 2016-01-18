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

public partial class Homepage : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["phr"]);
    string a, b, c, d, ee, f, g, h, i, j;
    string sta = "read";


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlDataAdapter sd = new SqlDataAdapter("select skey,pkey,id,name,uname,pwd,role,status from searchuserreg where uname='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "' and status='" + sta + "'", con);
        DataSet ds = new DataSet();
        sd.Fill(ds);


        if (ds.Tables[0].Rows.Count > 0)
        {
            a = ds.Tables[0].Rows[0]["skey"].ToString();
            b = ds.Tables[0].Rows[0]["pkey"].ToString();
            c = ds.Tables[0].Rows[0]["id"].ToString();
            d = ds.Tables[0].Rows[0]["name"].ToString();
            ee = ds.Tables[0].Rows[0]["uname"].ToString();
            f = ds.Tables[0].Rows[0]["pwd"].ToString();
            g = ds.Tables[0].Rows[0]["role"].ToString();
            h = ds.Tables[0].Rows[0]["status"].ToString();
            Session["sid"] = ee;
            Session["sname"] = f;

            if (TextBox1.Text == ee && TextBox2.Text == f)
            {
                Response.Redirect("searchafterlogin.aspx");
            }
            else
            {
                MsgBox.Show("Incorrect details. Check it");
            }
        }

    }







    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}