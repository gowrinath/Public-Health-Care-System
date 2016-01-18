<%@ Page Language="C#" AutoEventWireup="true" CodeFile="publicaacontent1.aspx.cs" Inherits="publicaacontent1" %>

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
                style="position:absolute; top: 20px; left: 343px; height: 675px; width: 661px;" 
                BackColor="White" BorderColor="Black" BorderStyle="Double">
                <asp:Label ID="Label3" runat="server" 
                    style="position:absolute; top: 19px; left: 329px;" Text="Public Authority" 
                    Font-Bold="True" ForeColor="#660066"></asp:Label>
                <asp:Label ID="Label1" runat="server" 
                    style="position:absolute; top: 20px; left: 230px;" Text="Welcome"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="position:absolute; top: 121px; left: 170px;" 
                    BackColor="White" BorderColor="#660066" BorderStyle="Double" BorderWidth="1px" 
                    CellPadding="3" >
                    <RowStyle BackColor="White" ForeColor="#333333" HorizontalAlign="Left" />
                    <Columns>
                    
                    
                        <asp:BoundField DataField="oid" HeaderText="PHR Owner ID" ReadOnly="True" />
                         
                        <asp:BoundField DataField="oname" HeaderText="Owner Name" />
                       
                         <asp:BoundField DataField="fileid" HeaderText="File Id" />
                       
                       <asp:BoundField DataField="fname" HeaderText="File Name" ReadOnly="True" />
                         
                       
                       
                       
                    </Columns>
                    
                    
                    
                    <FooterStyle BackColor="#66CCFF" ForeColor="#66CCFF" />
                    <PagerStyle BackColor="White" ForeColor="#333333" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                    <HeaderStyle BackColor="#66CCFF" Font-Bold="True" ForeColor="Black" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
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
            PostBackUrl="~/Homepage.aspx">log out</asp:LinkButton>
        <asp:LinkButton ID="LinkButton6" runat="server" 
            style="position:absolute; top: 64px; left: 155px; " 
            Font-Size="Large" Font-Underline="False" ForeColor="#003300" 
            PostBackUrl="~/publicaalogin.aspx">back</asp:LinkButton>
    </div>
    </form>
</body>
</html>
