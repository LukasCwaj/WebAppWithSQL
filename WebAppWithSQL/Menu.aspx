<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WebAppWithSQL.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        *{margin:0; overflow:auto}
        html, menu, form {height:100%}  
        header {text-align:center;font-style:oblique; font-size:24px; color:blue; font-weight:500; background-color:silver; position:fixed; width:100%; font-weight:200}
        main {text-align:left; width:90%; float: right; height:100%; margin:1px; background-color:white;margin-top:27px}
        aside {text-align:left; width:9%; float:left; background-color:whitesmoke; height:100%; display:block;margin-top:27px}
        footer {text-align:center; width:100%; position:absolute; bottom:10px; background-color:silver}
        body {background-color:darkslategrey; margin:0; height:100%;} 
    </style>
    <title >
      My first website
    </title>
    <link rel = "icon" 
        href =  "images/logo.png" 
        type = "image/x-icon"/> 
</head>
<body>
        <form runat="server">

        
        <header>
        Menu
        </header>
           
        <main>
            <asp:Label Font-Size="Large" runat="server">Database: </asp:Label>
            <asp:TextBox id="DatabaseTB" text="CWANIAK\MSSQLSERVER01" BorderColor="Magenta" runat="server" Width="120" ></asp:TextBox>
            <br />
            <asp:Label Font-Size="Large" runat="server">Catalog: </asp:Label>
            <asp:TextBox id="CatalogTB"  text="Cwiczenia" BorderColor="Magenta" runat="server" Width="120" ></asp:TextBox>
            <br />
            <asp:Label Font-Size="Large" runat="server">User: </asp:Label>
            <asp:TextBox id="UserTB" text="admin" BorderColor="Magenta" runat="server" Width="120" ></asp:TextBox>
            <br />
            <asp:Label Font-Size="Large" runat="server">Password: </asp:Label>
            <asp:TextBox id="PasswordTB" text="Admin123" BorderColor="Magenta" runat="server" Width="120"  ></asp:TextBox>
            <br />
            <asp:Button ID="EneterBT" Font-Size="Large" runat="server" Text="Enter" OnClick="EneterBT_Click"/>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </main>
  
        <aside>
            <asp:Label Font-Size="24px" runat="server">Menu</asp:Label>
            <br />
            <asp:HyperLink id="Authors"
                  NavigateUrl="authors.aspx"
                  Text="Authors"
                  Font-Size="12px"
                  runat="server"/>
            <br />
            <asp:Label Font-Size="Small" runat="server">Menu2</asp:Label>
            <br />
             <asp:HyperLink id="Information" 
                  NavigateUrl="information.aspx"
                  Text="Information"
                  Font-Size="12px"  
                  runat="server"/>
        </aside>
       
        <footer>
            Link to my GitHub: 
            <asp:HyperLink id="GitHub"
                  NavigateUrl="https://github.com/LukasCwaj"
                  Text="Click Here"
                  Font-Size="12px"
                  runat="server"/>
        </footer>
        </form>
</body>
</html>
