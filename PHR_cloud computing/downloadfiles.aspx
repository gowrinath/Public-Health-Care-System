<%@ Page Language="C#" AutoEventWireup="true" CodeFile="downloadfiles.aspx.cs" Inherits="downloadfiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<html xmlns="http://www.w3.org/1999/xhtml">
<body bgcolor="#B3CAD7">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel2" runat="server" 
            
            style="position:absolute; top: 232px; left: 151px; width: 1025px; height: 722px;" 
             BorderColor="#333333"  BackColor="#85D2EA"
            BorderStyle="Double" Font-Size="Medium">
            
            <asp:Panel ID="Panel4" runat="server" BackColor="#DCECF3" BorderColor="#000099" 
                BorderStyle="Double" Font-Bold="False" Font-Size="Medium" ForeColor="#003366" 
                
                
                style="position:absolute; top: 8px; left: 530px; height: 699px; width: 265px;" 
                Visible="False" ScrollBars="Both">
                Attribute - Based Encryption<br />
                =======================<br />
                <br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </asp:Panel>
            
            <asp:Panel ID="Panel3" runat="server" 
                
                
                
                style="position:absolute; top: 19px; left: 22px; height: 688px; width: 495px;">
                
                
                 <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 7px; left: 6px;" 
                    Text="Enter the secret key :"></asp:Label>
                    
                <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 6px; left: 4px;" 
                    Text="Type here to search..." Visible="False"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" 
                    
                    
                     
                     style="position:absolute; top: 7px; left: 153px; height: 22px; width: 151px; bottom: 649px;"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/download icon.png" 
                    
                    style="position:absolute; top: 6px; left: 314px; width: 95px; height: 26px; bottom: 646px;" 
                    onclick="ImageButton1_Click" />
                    
                    
                    
                     
                 <asp:Label ID="Label6" runat="server" 
                     
                     style="position:absolute; top: 154px; left: 135px; height: 80px; width: 255px;" 
                     Font-Size="X-Large" Visible="False">User Blocked....</asp:Label>
                    
                    
                    
                    
                 <asp:Label ID="Label3" runat="server" Font-Size="XX-Small" 
                     style="position:absolute; top: 42px; left: 5px; height: 19px; width: 483px;"></asp:Label>
                    
                    
                    
                    
            </asp:Panel>
            
        </asp:Panel>
         <asp:LinkButton ID="LinkButton1" runat="server" 
            style="position:absolute; top: 68px; left: 1076px; width: 50px;" Font-Bold="True" 
            Font-Size="Large" Font-Underline="False" ForeColor="Maroon" 
            PostBackUrl="~/Homepage.aspx">logout</asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server" 
            
            style="position:absolute; top: 93px; left: 151px; width: 1025px; height: 126px; bottom: 306px;" 
            BackImageUrl="~/images/header.png" BorderColor="#333333" 
            BorderStyle="Double">
           
            
            
        </asp:Panel>
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
    </form>
</body>
</html>
