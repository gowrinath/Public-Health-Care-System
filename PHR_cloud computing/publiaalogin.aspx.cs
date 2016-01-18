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

public partial class publiaalogin : System.Web.UI.Page
{
    string a, b;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        a = "publicaa";
        b = "publicaa";
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == a && TextBox2.Text == b)
        {

            Response.Redirect("publicaalogin.aspx");
        }
        else
        {
            MsgBox.Show("Invalid");
        }
 
    }
}
