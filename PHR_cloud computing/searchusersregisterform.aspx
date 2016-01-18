<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchusersregisterform.aspx.cs" Inherits="searchusersregisterform" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#B3CAD7">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel2" runat="server" 
            
            style="position:absolute; top: 232px; left: 151px; width: 1025px; height: 397px;" 
            BackImageUrl="~/images/panel1.png" BorderColor="#333333" BorderStyle="Double">
            <asp:Panel ID="Panel4" runat="server" 
                
                
                style="position:absolute; top: 39px; left: 359px; height: 309px; width: 636px;" 
                Font-Size="Medium" BorderColor="#333333" BorderStyle="Double">
                <asp:TextBox ID="TextBox8" runat="server" 
                    style="position:absolute; top: 233px; left: 159px;"></asp:TextBox>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" style="position:absolute; top: 134px; left: 345px;"
                            ErrorMessage="Enter validate no...." 
                    ValidationExpression="^((\+)?(\d{2}[-]))?(\d{10}){1}?$" ForeColor="#000066"></asp:RegularExpressionValidator>
                
                
                
                
                <asp:TextBox ID="TextBox7" runat="server" 
                    style="position:absolute; top: 202px; left: 159px;">search user</asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server" 
                    style="position:absolute; top: 165px; left: 159px;"></asp:TextBox>
                    
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="TextBox6" style="position:absolute; top: 167px; left: 345px;"
                            ErrorMessage="Enter valid Email address ..." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="#000066"></asp:RegularExpressionValidator>
                    
                    
                <asp:TextBox ID="TextBox5" runat="server" 
                    style="position:absolute; top: 133px; left: 159px;"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" 
                    style="position:absolute; top: 101px; left: 159px;" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" 
                    style="position:absolute; top: 67px; left: 159px;"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="position:absolute; top: 34px; left: 159px;"></asp:TextBox>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="position:absolute; top: 4px; left: 159px;"></asp:TextBox>
                
                <asp:Label ID="Label8" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 233px; left: 46px;" 
                    Text="D.O.B."></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 202px; left: 46px;" 
                    Text="role"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 168px; left: 46px;" 
                    Text="email id"></asp:Label>
                <asp:Label ID="Label5" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 138px; left: 46px;" 
                    Text="mobile"></asp:Label>
                <asp:Label ID="Label4" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 104px; left: 46px;" 
                    Text="password"></asp:Label>
                
                <asp:Label ID="Label3" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 72px; left: 46px;" 
                    Text="username"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 36px; left: 46px;" 
                    Text="name"></asp:Label>
                <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 6px; left: 46px;" Text="id"></asp:Label>
                
                
                &nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    style="position:absolute; top: 270px; left: 160px; width: 80px;" 
                    ImageUrl="~/images/register.png" onclick="ImageButton1_Click" />
                
                
            </asp:Panel>
            
            <asp:Panel ID="Panel5" runat="server" 
                
                
                style="position:absolute; top: 19px; left: 22px; height: 356px; width: 292px;" 
                BackImageUrl="~/images/whitepanel.png" Visible="False">
                
                <asp:Label ID="Label13" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#663300" style="position:absolute; top: 121px; left: 155px;" 
                    Text="public  key" Font-Underline="False"></asp:Label>
                
                
                <asp:Label ID="Label11" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    Font-Underline="False" ForeColor="#006699" 
                    style="position:absolute; top: 121px; left: 44px;" Text="public  key"></asp:Label>
                <asp:Label ID="Label12" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    Font-Underline="False" ForeColor="#663300" 
                    style="position:absolute; top: 81px; left: 154px;" Text="symetric key"></asp:Label>
                <asp:Label ID="Label10" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    Font-Underline="False" ForeColor="#006699" 
                    style="position:absolute; top: 81px; left: 44px;" Text="symetric key"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    Font-Underline="True" ForeColor="#000066" 
                    style="position:absolute; top: 31px; left: 24px;" Text="your secret keys"></asp:Label>
                <asp:Image ID="Image1" runat="server" 
                    style="position:absolute; top: 178px; left: 73px; height: 149px; width: 148px;" 
                    ImageUrl="~/images/maniwth key.png" />
                
                
            </asp:Panel>
            
         <asp:Panel ID="Panel3" runat="server" BackImageUrl="~/images/registerpanel.png" 
                style="position:absolute; top: 19px; left: 22px; height: 356px; width: 292px;">
            </asp:Panel>
            
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" 
            
            style="position:absolute; top: 93px; left: 151px; width: 1025px; height: 126px; bottom: 306px;" 
            BackImageUrl="~/images/header.png" BorderColor="#333333" 
            BorderStyle="Double">
            
            
        </asp:Panel>
        
        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

      
    
    
       
            <ajax:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox8">
            </ajax:CalendarExtender>
        
        
        
        <asp:LinkButton ID="LinkButton5" runat="server" 
            style="position:absolute; top: 245px; left: 1036px; " 
            Font-Size="Large" Font-Underline="False" ForeColor="#660033" 
            PostBackUrl="~/Homepage.aspx">back to homepage</asp:LinkButton>
    </div>
    </form>
</body>
</html>
