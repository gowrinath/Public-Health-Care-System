<%@ Page Language="C#" AutoEventWireup="true" CodeFile="publicaalogin.aspx.cs" Inherits="publicaalogin" %>

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
            
            <asp:Panel ID="Panel3" runat="server" 
                
                style="position:absolute; top: 19px; left: 22px; height: 684px; width: 292px;">
                
                <asp:Image ID="Image2" runat="server"  
                    
                    style="position:absolute; top: 1px; left: -1px; height: 684px; width: 292px;"  />
                <ajax:SlideShowExtender ID="Image2_SlideShowExtender" runat="server" 
                    AutoPlay="true" Loop="true" SlideShowServiceMethod="GetSlides" 
                    SlideShowServicePath="show.asmx" TargetControlID="Image2">
                </ajax:SlideShowExtender>
            </asp:Panel>
               
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

      
            <asp:Panel ID="Panel4" runat="server" 
                style="position:absolute; top: 22px; left: 337px; height: 675px; width: 661px;" 
                BackColor="White" BorderColor="Black" BorderStyle="Double">
                <asp:LinkButton ID="LinkButton8" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="Black" 
                    style="position:absolute; top: 277px; left: 229px;" 
                    PostBackUrl="~/emergencyclients.aspx">Emergency clients</asp:LinkButton>
                <asp:LinkButton ID="LinkButton7" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="Black" PostBackUrl="~/publicaacontent1.aspx" 
                    style="position:absolute; top: 230px; left: 229px;">Health Records Details</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="Black" 
                    style="position:absolute; top: 171px; left: 229px;" 
                     PostBackUrl="~/publicaacontent.aspx">Personal Health Records Owners Details</asp:LinkButton>
                <asp:Label ID="Label7" runat="server" Font-Size="XX-Large" ForeColor="#000066" 
                    style="position:absolute; top: 274px; left: 193px;" Text="*"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Size="XX-Large" ForeColor="#000066" 
                    style="position:absolute; top: 232px; left: 193px;" Text="*"></asp:Label>
                <asp:Label ID="Label5" runat="server" Font-Size="XX-Large" ForeColor="#000066" 
                    style="position:absolute; top: 169px; left: 193px;" Text="*"></asp:Label>
                <asp:Label ID="Label3" runat="server" 
                    style="position:absolute; top: 21px; left: 326px;" Text="Public Authority" 
                    Font-Bold="True" ForeColor="#660066"></asp:Label>
                <asp:Label ID="Label1" runat="server" 
                    style="position:absolute; top: 19px; left: 217px;" Text="Welcome"></asp:Label>
            </asp:Panel>
    
    
       
            
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
    </div>
    </form>
</body>
</html>
