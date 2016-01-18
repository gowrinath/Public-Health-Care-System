<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchafterlogin.aspx.cs" Inherits="searchafterlogin" %>

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
            <asp:Panel ID="Panel6" runat="server" 
                
                
                
                style="position:absolute; top: 9px; left: 747px; height: 699px; width: 265px;" 
                BackColor="#B3CAD7" BorderColor="#000099" BorderStyle="Double" Font-Bold="False" 
                Font-Size="Medium" ForeColor="#003366" Visible="False" ScrollBars="Both">
                
                Attribute - Based Decryption<br />
                =======================<br />
                <br />
                
                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                
            </asp:Panel>
            
            <asp:Panel ID="Panel4" runat="server" BackColor="#DCECF3" BorderColor="#000099" 
                BorderStyle="Double" Font-Bold="False" Font-Size="Medium" ForeColor="#003366" 
                
                
                style="position:absolute; top: 9px; left: 463px; height: 699px; width: 265px;" 
                Visible="False" ScrollBars="Both">
                Attribute - Based Encryption<br />
                =======================<br />
                <br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </asp:Panel>
            
            <asp:Panel ID="Panel3" runat="server" 
                
                
                style="position:absolute; top: 19px; left: 22px; height: 678px; width: 436px;">
                
                
                <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                    ForeColor="#006699" style="position:absolute; top: 6px; left: 4px;" 
                    Text="Type here to search..."></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" 
                    
                    
                     style="position:absolute; top: 37px; left: 3px; height: 22px; width: 344px;"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/searchicon.png" 
                    
                    style="position:absolute; top: 36px; left: 358px; width: 69px; height: 24px;" 
                    onclick="ImageButton1_Click" />
                    
                    
                    
                    
                <asp:Panel ID="Panel5" runat="server" 
                    
                     style="position:absolute; top: 70px; left: 2px; height: 620px; width: 423px;" 
                     BackColor="#99CCFF" BorderColor="#000066" BorderStyle="Double" 
                     Font-Size="Medium">
                    
                    
                    <asp:Label ID="lbl_error" runat="server" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="X-Small" ForeColor="#003399" 
                        style="position:absolute; top: 5px; left: 5px; bottom: 602px;"></asp:Label>
                    <asp:Label ID="lbl_entxt" runat="server" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="X-Small" ForeColor="#003399" 
                        style="position: absolute; top: 6px; left: 84px; height: 19px;"></asp:Label>
                    <asp:Label ID="lbl_text" runat="server" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="X-Small" ForeColor="#003399" 
                        style="position: absolute; top: 6px; left: 166px;"></asp:Label>
                    <asp:Label ID="downloadfiles" runat="server" align="left" class="style22" 
                        ForeColor="Maroon" style="position: absolute; top: 63px; left: 3px;" 
                        valign="top" Font-Size="Small"></asp:Label>
                    
                    
                    <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                        ForeColor="#006699" style="position:absolute; top: -69px; left: -2px;" 
                        Text="Type here to search..."></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Search Results" 
                        style="position:absolute; top: 31px; left: 3px;" Font-Size="Large" 
                        ForeColor="#660066" Visible="False"></asp:Label>
                    
                    
                </asp:Panel>
                    
                    
                    
                    
            </asp:Panel>
            
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" 
            
            style="position:absolute; top: 93px; left: 151px; width: 1025px; height: 126px; bottom: 306px;" 
            BackImageUrl="~/images/header.png" BorderColor="#333333" 
            BorderStyle="Double">
            
            
        </asp:Panel>
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" 
            style="position:absolute; top: 65px; left: 1109px;" Font-Bold="True" 
            Font-Size="Large" Font-Underline="False" ForeColor="#000066" 
            PostBackUrl="~/Homepage.aspx">logout</asp:LinkButton>
    </div>
    </form>
</body>
</html>
