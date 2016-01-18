using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Create_id
/// </summary>
public class Create_id
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["phr"]);
   
	public Create_id()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void register(String nam, String usernam, String pass, String value, String addrs, String city, String residence, String residencnindia, String othrstate, String residencystatus, String citizn, String email, String telephone, String relation, String gender, String dob, String dob1, String dob2, String age, String mothertongue, String educaton, String occupation, String incom, String status, String children, String lookingfor, String abtpartner, String height, String bodytype, String complexin, String cases, String smoke, String drink, String diet, String cntryofbirth, String caste, String subcaste, String star, String raasi, String timeofbirth, String timeofbirth1, String timeofbirth2, String cityofbirth, String familyvalues, String abtyourself, String abtfamily, String hear, String agree, String regdate, String ExpiredDate,String validation,String payment)
        {
            try
            {
                con.Open();
               
                SqlCommand cmd = new SqlCommand("insert into registerform values('" + nam + "','" + usernam + "','" + pass + "','" + value + "','" + addrs + "','" + city + "','" + residence + "','" + residencnindia + "','" + othrstate + "','" + residencystatus + "','" + citizn + "','" + email + "','" + telephone + "','" + relation + "','" + gender + "',('" + dob + "'+'/'+'" + dob1 + "'+'/'+'" + dob2 + "'),'" + age + "','" + mothertongue + "','" + educaton + "','" + occupation + "','" + incom + "','" + status + "','" + children + "','" + lookingfor + "','" + abtpartner + "','" + height + "','" + bodytype + "','" + complexin + "','" + cases + "','" + smoke + "','" + drink + "','" + diet + "','" + cntryofbirth + "','" + caste + "','" + subcaste + "','" + star + "','" + raasi + "',('" + timeofbirth + "'+':'+'" + timeofbirth1 + "'+''+'" + timeofbirth2 + "'),'" + cityofbirth + "','" + familyvalues + "','" + abtyourself + "','" + abtfamily + "','" + hear + "','" + agree + "','" + regdate + "','"+ExpiredDate+"','"+validation+"','"+payment+"')", con);
              

                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                MsgBox.Show(ex.Message);
            }
            con.Close();
   
}
    public int createid()
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select max(id) from searchuserreg", con);
        String var = Convert.ToString(cmd1.ExecuteScalar());
        int var1;
        if (var == null || var == "")
        {
            var1 = 1;
        }
        else
        {
            var1 = Convert.ToInt32(var) + Convert.ToInt32(1);
        }
        con.Close();
        return var1;
         
    }

     



    public int createid1()
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select max(id) from phrownerreg", con);
        String var = Convert.ToString(cmd2.ExecuteScalar());
        int var1;
        if (var == null || var == "")
        {
            var1 = 1;
        }
        else
        {
            var1 = Convert.ToInt32(var) + Convert.ToInt32(1);
        }
        con.Close();
        return var1;
        
    }


    public int createid2()
    {
        con.Open();
        SqlCommand cmd3 = new SqlCommand("select max(fileid) from upload_file_details", con);
        String var = Convert.ToString(cmd3.ExecuteScalar());
        int var1;
        if (var == null || var == "")
        {
            var1 = 1;
        }
        else
        {
            var1 = Convert.ToInt32(var) + Convert.ToInt32(1);
        }
        con.Close();
        return var1;
        
    }


    public void uploadfile(string oid,string oname,string fileid,string fname,byte[] fibytes)
    {
        try
        {
            con.Open();
            int n = fname.Length;
            SqlCommand cmd2 = new SqlCommand("insert into uploadfiles values('" + oid + "','" + oname + "','" + fileid + "','" + fname + "',@files)", con);
            cmd2.Parameters.AddWithValue("@files", fibytes);
            cmd2.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            MsgBox.Show(ex.Message);
        }
    }
        
    
}
