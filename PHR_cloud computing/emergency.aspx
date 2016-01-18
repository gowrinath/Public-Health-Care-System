<%@ Page Language="C#" AutoEventWireup="true" CodeFile="emergency.aspx.cs" Inherits="emergency" %>

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
            
            
            style="position:absolute; top: 232px; left: 151px; width: 1025px; height: 734px;" 
            BorderColor="#333333" BorderStyle="Double" BackColor="#D3F9F9">
            <asp:Panel ID="Panel4" runat="server" 
                
                style="position:absolute; top: 19px; left: 339px; height: 688px; width: 662px;" 
                BackColor="White">
                
                <asp:Label ID="Label23" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" 
                    style="position:absolute; top: 163px; left: 195px; bottom: 508px;" 
                    Text="type any secret word"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" 
                    style="position:absolute; top: 129px; left: 193px; bottom: 542px;" 
                    Text="your name"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" 
                    style="position:absolute; top: 97px; left: 193px; bottom: 574px;" 
                    Text="type ur mail id"></asp:Label>
                <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="Maroon" 
                    style="position:absolute; top: 23px; left: 193px; bottom: 647px;" 
                    Text="Emergency Services......."></asp:Label>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="TextBox3" style="position:absolute; top: 168px; left: 559px; height: 17px; width: 91px;"
                                ErrorMessage="only 4 digit" 
                    ValidationExpression="^([a-zA-Z0-9]{4,7})$" Font-Size="Small"></asp:RegularExpressionValidator>
                    
                    
                <asp:TextBox ID="TextBox3" runat="server" 
                    style="position:absolute; top: 162px; left: 332px; right: 202px;"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="position:absolute; top: 130px; left: 332px;"></asp:TextBox>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="position:absolute; top: 95px; left: 331px;"></asp:TextBox>
                    
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="TextBox1" style="position:absolute; top: 91px; left: 561px; height: 24px; width: 97px;"
                            ErrorMessage="Enter valid Email address ..." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    Font-Size="Small"></asp:RegularExpressionValidator>
                    
                
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    style="position:absolute; top: 206px; left: 333px; height: 26px; width: 88px;" 
                    ImageUrl="~/images/submiticon.png" onclick="ImageButton1_Click" />
                
                &nbsp;</asp:Panel>
            
            <asp:Panel ID="Panel3" runat="server" 
                
                style="position:absolute; top: 19px; left: 22px; height: 684px; width: 292px;">
                
                <asp:Image ID="Image1" runat="server"  
                    style="position:absolute; top: 1px; left: -1px; height: 684px; width: 292px;"  />
            </asp:Panel>
               
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

      
   <ajax:SlideShowExtender ID="SlideShowExtender1" runat="server" AutoPlay="true"  Loop="true"
    TargetControlID="Image1" SlideShowServicePath="show.asmx" SlideShowServiceMethod="GetSlides"></ajax:SlideShowExtender>  
    
    
       
           
            
            
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" 
            
            style="position:absolute; top: 93px; left: 151px; width: 1025px; height: 126px; bottom: 306px;" 
            BackImageUrl="~/images/header.png" BorderColor="#333333" 
            BorderStyle="Double">
            
            
        </asp:Panel>
        <asp:LinkButton ID="LinkButton5" runat="server" 
            style="position:absolute; top: 63px; left: 1129px; " 
            Font-Size="Large" Font-Underline="False" ForeColor="#003300" 
            PostBackUrl="~/Homepage.aspx">log out</asp:LinkButton>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
            Font-Size="Large" Font-Underline="False" ForeColor="#000066" 
            PostBackUrl="~/emerg.aspx" 
            style="position: absolute; top: 68px; left: 156px;">back</asp:LinkButton>
    </div>
    </form>
</body>
</html>

