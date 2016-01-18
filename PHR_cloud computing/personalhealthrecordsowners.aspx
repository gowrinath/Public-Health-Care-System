<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personalhealthrecordsowners.aspx.cs" Inherits="personalhealthrecordsowners" %>

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
                    Text="file"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" 
                    style="position:absolute; top: 130px; left: 194px; bottom: 541px;" 
                    Text="file name"></asp:Label>
                <asp:Label ID="Label20" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" 
                    style="position:absolute; top: 7px; left: 623px; bottom: 664px;" 
                    Text="did" Visible="False"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" 
                    style="position:absolute; top: 97px; left: 193px; bottom: 574px;" 
                    Text="file id"></asp:Label>
                <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="Maroon" 
                    style="position:absolute; top: 23px; left: 193px; bottom: 647px;" 
                    Text="File Details. . . "></asp:Label>
                    
                    
                    
                    
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="position:absolute; top: 130px; left: 312px;"></asp:TextBox>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="position:absolute; top: 96px; left: 312px;"></asp:TextBox>
                
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    style="position:absolute; top: 191px; left: 312px; height: 26px; width: 88px;" 
                    ImageUrl="~/images/submiticon.png" onclick="ImageButton1_Click" />
                
                &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" 
                    style="position:absolute; top: 162px; left: 311px;" />
                <asp:Label ID="lbl_filemsg" runat="server" Font-Bold="True" style="position:absolute; top: 226px; left: 202px;" 
                    Font-Names="Verdana" Font-Size="Small" ForeColor="#CC3300"></asp:Label>
                <asp:Label ID="lbl_msg" runat="server" Font-Bold="True" Font-Names="Verdana" style="position:absolute; top: 228px; left: 354px;" 
                    Font-Size="Small" ForeColor="#CC3300"></asp:Label>
                <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Verdana" style="position:absolute; top: 271px; left: 311px;" 
                    Font-Size="Small" ForeColor="#006600" Text="Attribute - Based Encryption"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" 
                    Font-Size="Small" ForeColor="#000066" 
                    style="position:absolute; top: 271px; left: 201px;" Text="Algorithm:"></asp:Label>
            </asp:Panel>
            
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
            PostBackUrl="~/phr ownerlogin.aspx">log out</asp:LinkButton>
        <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
            Font-Size="Large" Font-Underline="False" ForeColor="#000066" 
            PostBackUrl="~/phrafterlogin.aspx" 
            style="position: absolute; top: 68px; left: 156px;">back</asp:LinkButton>
    </div>
    </form>
</body>
</html>
