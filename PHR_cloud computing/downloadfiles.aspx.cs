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
using System.Text.RegularExpressions;
using System.IO;
using System.Text;
using System.Security.Cryptography;


public partial class downloadfiles : System.Web.UI.Page
{
    Class1 p = new Class1();

    StringBuilder sb = new StringBuilder();
    public static RSACryptoServiceProvider rsa;

    string fid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = (string)Session["sid"];
        Label5.Text = (string)Session["sname"];
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        fid = Request.Params["id"];
        Session["filename"] = fid;
        DataSet set = new DataSet();
        set = p.matchingattributes(TextBox1.Text,Label4.Text,Label5.Text);
        if (set.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("openfile.aspx");
        }
        else
        {
            Panel4.Visible = true;
             
            
            AssignParameter();
            StreamReader reader = new StreamReader(@"F:\Dotnet Extn\IEEE 2012\CLOUD COMPUTING\Scalable and Secure Sharing of Personal Health Records in Cloud Computing using Attribute-based Encryption\Project code\PHR_cloud computing\publickey.xml");
            string publicOnlyKeyXML = reader.ReadToEnd();
            rsa.FromXmlString(publicOnlyKeyXML);
            reader.Close();
           
            byte[] plainbytes = System.Text.Encoding.UTF8.GetBytes((string)Session["message"]);
            byte[] cipherbytes = rsa.Encrypt(plainbytes, false);
            for (int x = 0; x < cipherbytes.Length; x++)
            {
                sb.Append(cipherbytes[x].ToString() + "<br>");
            }
            Label3.Text = Convert.ToBase64String(cipherbytes);
            Label3.Height = 641;
            Label3.Width = 420;
            Label3.Visible = false;
            Label6.Visible = true;
            sb.Append(Label3.Text);
            Literal1.Text = Convert.ToString(sb);
            p.lockkeys(Label4.Text, Label5.Text);
        }
    }


    public static void AssignParameter()
    {
        const int PROVIDER_RSA_FULL = 1;
        const string CONTAINER_NAME = "SpiderContainer1";
        CspParameters cspParams;
        cspParams = new CspParameters(PROVIDER_RSA_FULL);
        cspParams.KeyContainerName = CONTAINER_NAME;
        cspParams.Flags = CspProviderFlags.UseMachineKeyStore;
        cspParams.ProviderName = "Microsoft Strong Cryptographic Provider";
        rsa = new RSACryptoServiceProvider(cspParams);
    }


}
