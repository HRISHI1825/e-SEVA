﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RajyaPuraskarScoutPrintForUser.aspx.cs" Inherits="RajyaPuraskarScoutPrintForUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="themes/bootstrap_9.css" rel="stylesheet" />
    <link href="themes/custom_9.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:FormView ID="FormView1" runat="server">
        </asp:FormView>
        <asp:FormView ID="FormView2" runat="server">
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <br />
        one for RajyaPuraskarScout1.aspx<br />
        another for RajyaPuraskarScout2.aspx</div>
        <div id="divHidden">
           <input type="button" value="Print" onclick="window.print()" />
        </div>
         
    </form>
</body>
</html>
