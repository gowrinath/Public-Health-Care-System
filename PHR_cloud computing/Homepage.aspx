<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#B3CAD7">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel2" runat="server" 
            
            style="position:absolute; top: 232px; left: 151px; width: 1025px; height: 397px;" 
            BackImageUrl="~/images/panel1.png" BorderColor="#333333" BorderStyle="Double">
            <asp:Panel ID="Panel4" runat="server" 
                style="position:absolute; top: 19px; left: 339px; height: 356px; width: 662px;" 
                BackImageUrl="~/images/matter copy.png">
                
            </asp:Panel>
            
            <asp:Panel ID="Panel3" runat="server" BackImageUrl="~/images/loginbg.png" 
                style="position:absolute; top: 19px; left: 22px; height: 356px; width: 292px;">
                <asp:Label ID="Label3" runat="server" Font-Names="Calibri" Font-Size="Large" 
                    ForeColor="#006699" style="position:absolute; top: 245px; left: 26px;" 
                    Text="New here"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Large" 
                    ForeColor="#006699" style="position:absolute; top: 135px; left: 26px;" 
                    Text="Password"></asp:Label>
                <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Large" 
                    ForeColor="#006699" style="position:absolute; top: 95px; left: 26px;" 
                    Text="Username"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="position:absolute; top: 134px; left: 111px; bottom: 200px;" 
                    TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="position:absolute; top: 97px; left: 111px;"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/loginicon.png" 
                    
                    style="position:absolute; top: 171px; left: 113px; width: 81px; height: 29px;" 
                    onclick="ImageButton1_Click" />
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Calibri" 
                    Font-Size="Large" Font-Underline="False" ForeColor="#003366" 
                    style="position:absolute; top: 246px; left: 113px;" 
                    PostBackUrl="~/searchusersregisterform.aspx">sign up ...</asp:LinkButton>
            </asp:Panel>
            
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" 
            
            style="position:absolute; top: 93px; left: 151px; width: 1025px; height: 126px; bottom: 306px;" 
            BackImageUrl="~/images/header.png" BorderColor="#333333" 
            BorderStyle="Double">
            
            
        </asp:Panel>
        <asp:LinkButton ID="LinkButton5" runat="server" 
            style="position:absolute; top: 63px; left: 569px; " 
            Font-Size="Large" Font-Underline="False" ForeColor="#006699" 
            PostBackUrl="~/emerg.aspx">Emergency </asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" 
            style="position:absolute; top: 63px; left: 433px; right: 775px;" 
            Font-Size="Large" Font-Underline="False" ForeColor="#006699" 
            PostBackUrl="~/publiaalogin.aspx">Public AA&apos;s</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" 
            style="position:absolute; top: 63px; left: 153px; " 
            Font-Size="Large" Font-Underline="False" ForeColor="#006699" 
            PostBackUrl="~/phr ownerlogin.aspx" onclick="LinkButton2_Click">Personal Health Records Owners</asp:LinkButton>
    </div>
    </form>
</body>
</html>
