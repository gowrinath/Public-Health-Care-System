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




public partial class personalhealthrecordsowners : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["phr"]);
    Class1 cid = new Class1();
     
    string sta = "read";


    protected void Page_Load(object sender, EventArgs e)
    {
       TextBox1.Text = Convert.ToString(cid.createid2());
       Label21.Visible = false;
       Label22.Visible = false;
       Label21.Text = (string)Session["id"];
       Label22.Text = (string)Session["name"];
       Label6.Visible = false;
       Label24.Visible = false;
       

    }



    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (FileUpload1.PostedFile == null || String.IsNullOrEmpty(FileUpload1.PostedFile.FileName) || FileUpload1.PostedFile.InputStream == null || TextBox2.Text == "")
        {
            lbl_msg.Text = "<br />Error - unable to upload file. Please try again.<br />";
        }
        else
        {
            byte[] filebytes = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
            FileUpload1.PostedFile.InputStream.Read(filebytes, 0, filebytes.Length);
            cid.uploadfile(Label21.Text,Label22.Text,TextBox1.Text,TextBox2.Text, filebytes);
            Label6.Visible = true;
            Label24.Visible = true;
            lbl_msg.Text = "File successfully uploaded";
        }

    }
}
