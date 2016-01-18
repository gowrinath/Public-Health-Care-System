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

public partial class sendmail : System.Web.UI.Page
{


    string gMailAccount = "sphrsociety@gmail.com";
    string password = "phrabe14";
    string to,a,b,c,d;
    string owrid, owrpwd, yes, nam;
    string subject = "Your Secret Key to download files";
    string message;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["phr"]);
    string Id;

    protected void Page_Load(object sender, EventArgs e)
    {
        Id = Request.Params["mailid"];
       
            }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlDataAdapter adp1 = new SqlDataAdapter("select * from emergency where mailid='" + Id + "'", con);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
        {
            a = ds1.Tables[0].Rows[i]["mailid"].ToString();
            b = ds1.Tables[0].Rows[i]["name"].ToString();
            c = ds1.Tables[0].Rows[i]["secret"].ToString();
            d = ds1.Tables[0].Rows[i]["status"].ToString();


            if (a == Id)
            {

                message = "your secret key for the requested information is"+TextBox1.Text;
                to = ds1.Tables[0].Rows[i]["mailid"].ToString();
                NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(gMailAccount);
                msg.To.Add(new MailAddress(to));
                msg.Subject = subject;
                msg.Body = message;
                msg.IsBodyHtml = true;

                try
                {
                    SmtpClient client = new SmtpClient("smtp.gmail.com");
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = loginInfo;
                    client.Send(msg);
                    Label4.Visible = true;
                    con.Open();
                    SqlCommand cmd=new SqlCommand("update emergency set skey='"+TextBox1.Text+"' where name='"+b+"' and mailid='"+a+"'",con);

                    
                    cmd.ExecuteNonQuery();
                    con.Close();


                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                    Label3.Text = "OFFLINE : Failure Sending Mail !";

                }

                yes = "yes";
            }
        }
        con.Close();
    }
}
 
