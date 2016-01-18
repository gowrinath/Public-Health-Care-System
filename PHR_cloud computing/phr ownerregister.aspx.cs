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



public partial class phr_ownerregister : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["phr"]);
    Create_id cid = new Create_id();
     
    string sta = "read";
    encryption en = new encryption();
    string ra, uid, pas, unm, a = "null";


    protected void Page_Load(object sender, EventArgs e)
    {
        Panel5.Visible = false;
        TextBox1.Text = Convert.ToString(cid.createid1());
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();

        Random val = new Random();
        int randomnumber = val.Next(10, 200);
        ra = Convert.ToString(randomnumber);
        Label12.Text = en.createloginid(TextBox1.Text, TextBox2.Text, ra);
        Label13.Text = en.createprivacykey(TextBox1.Text, TextBox3.Text, ra);
        Panel3.Visible = false;
        Panel5.Visible = true;

        SqlCommand cmd = new SqlCommand("insert into phrownerreg values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + sta + "','" + Label12.Text + "','" + Label13.Text + "')", con);
        cmd.ExecuteNonQuery();
        MsgBox.Show("Details Saved");
        con.Close();
    }
}
