<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="WebAppWithSQL.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        *{margin:0; overflow:auto}
        html, menu {height:100%}  
        header {text-align:center;font-style:oblique; font-size:24px; color:lightgreen; font-weight:500; background-color:darkolivegreen; position:fixed; width:100%; font-weight:200}
        main {text-align:left; width:90%; float: right; height:100%; margin:7px; background-color:floralwhite;margin-top:30px}
        aside {text-align:left; width:8%; float:left; background-color:darkolivegreen; height:100%; margin-top:7px; display:block;margin-top:30px}
        footer {text-align:center; width:100%; position:absolute; bottom:10px; background-color:lightgreen}
        body {background-color:darkgreen; margin:10; height:100%;}  
    </style>
    <title >
      My first website
    </title>
    <link rel = "icon" 
        href =  "images/logo.png" 
        type = "image/x-icon"/> 
</head>
<body>
        
        <header>
        Information
        </header>
            
        <main>
            <asp:HyperLink id="hyperlink2" 
                  NavigateUrl="menu.aspx"
                  Text="Powrót"
                  runat="server"/>
        </main>
        
        <aside>
            <asp:Label Font-Size="Large" runat="server">Menu</asp:Label>
            <br />
            <asp:Label Font-Size="Small" runat="server">Menu1</asp:Label>
            <br />
            <asp:Label Font-Size="Small" runat="server">Menu2</asp:Label>
            <br />
             <asp:HyperLink id="hyperlink1" 
                  NavigateUrl="information.aspx"
                  Text="Information"
                  runat="server"/>
        </aside>
        
        <footer>
            STOPKA
        </footer>
        
</body>
</html>
