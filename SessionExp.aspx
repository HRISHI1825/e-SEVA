<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SessionExp.aspx.cs" Inherits="SessionExp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
    
        <asp:Label ID="Label1" runat="server" Font-Names="Impact" Font-Size="XX-Large" 
            ForeColor="Red" Text="Session Expired"></asp:Label>
        <hr />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Login</asp:HyperLink>
    
    </center>
    </div>
    </form>
</body>
</html>
