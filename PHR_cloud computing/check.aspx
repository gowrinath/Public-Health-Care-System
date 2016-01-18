<%@ Page Language="C#" AutoEventWireup="true" CodeFile="check.aspx.cs" Inherits="check" %>
<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:Panel ID="Panel4" runat="server" 
                
                style="position:absolute; top: 16px; left: 193px; height: 688px; width: 662px;" 
                BackColor="White">
                
                
                 <table width="500px">
            <tr>
                <td style="font-size:20px; color:red" >
                    Personal Details. . . </td>
            </tr>
            <tr>
                <td >
                    Name&nbsp;</td>
                <td>
               
              
              <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
              
              </td> 

                </td>
            </tr>
            <tr>
                <td >
                    D.O.B</td>
                    <td>
            
              
              <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
              <ajax:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" 
                  TargetControlID="TextBox3">
              </ajax:CalendarExtender>
              
              </td> 

                </td>
            </tr>
            
            <tr>
            
            <td>Blood type</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                
                 <asp:ListItem>select ur blood group</asp:ListItem>
                    <asp:ListItem>O+ve</asp:ListItem>
                    <asp:ListItem>O-ve</asp:ListItem>
                    <asp:ListItem>A+ve</asp:ListItem>
                    <asp:ListItem>A-ve</asp:ListItem>
                    <asp:ListItem>B+ve</asp:ListItem>
                    <asp:ListItem>B-ve</asp:ListItem>
                    <asp:ListItem>AB+ve</asp:ListItem>
                    <asp:ListItem>AB-ve</asp:ListItem>
                </asp:DropDownList>
                </td>
            
            </tr>
            <tr>
            <td>Emergency contact</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
            <td style="font-size:20px; color:red" >Date of last physical...</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            
            </tr>
            <tr>
            <td>Result of Test
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
            <td>Major illness &amp; Surgery</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
            <td>Date (surgery) mention</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
            
            </tr>
            
            <tr>
            <td style="font-size:20px; color:red">Medicine Details. . .</td>
            </tr>
             <tr>
             <td>Medicine name
             </td>
             <td>
                 <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                 
             </tr>
             <tr>
             <td>Dosage</td>
             <td>
                 <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
             <td>How long u take them</td>
             <td>
                 <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
             <td style="font-size:20px; color:red">Drawbacks. . .</td>
             
             </tr>
             <tr>
             <td>any allergies</td>
             <td>
                 <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
             <td>what type</td>
             <td>
                 <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
             <td style="font-size:20px; color:red">About ur family. . .</td>
             </tr>
             <tr>
             <td>any history illness about ur family</td>
             <td>
                 <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                 <asp:ListItem>yes</asp:ListItem>
                 <asp:ListItem>no</asp:ListItem>
                 </asp:RadioButtonList>
             </td>
             </tr>
             <tr>
             <td>describe that illness</td>
             <td>
                 <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine"></asp:TextBox></td>
             </tr>
                    </table>
                
                
                <tr>
                <td style="font-size:20px; color:White">................................................................                              
                 </td>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Bottom" 
                        ImageUrl="~/images/submiticon.png" Height="33px" Width="98px" 
                        onclick="ImageButton1_Click" /></td>
               
                </tr>
                
                 <br />
                 <br />
                
                
                
                
               </asp:Panel>
            
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

      
    </div>
    </form>
</body>
</html>
