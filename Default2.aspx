<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p ></p>
                <asp:Label ID="IndexPagePar" runat="server" Text="<%$ Resources :IndexPagePar %>"></asp:Label><br />
                <asp:HyperLink ID="Previoushyperlinks" NavigateUrl="Default.aspx"  runat="server" Text="<%$ Resources :Previoushyperlinks %>" ></asp:HyperLink>
    </div>
    </form>
</body>
</html>
