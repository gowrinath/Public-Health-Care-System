using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Net;
using System.IO;
using System.Xml.Linq;
using System.Net.Mail;


public partial class emergency : System.Web.UI.Page
{
    string gMailAccount = "kalyanbabusiva@gmail.com";
    string password = "sivababu86";
    string to;
    string subject = "Welcome to Datapoint.";
    string message;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["phr"]);
    string sta = "read",keey="null";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into emergency values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+sta+"','"+keey+"')", con);
        cmd.ExecuteNonQuery();
        MsgBox.Show("secret key send to ur mail id");
        con.Close();

    }
}
