<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChaturthCharanMain.aspx.cs" Inherits="ChaturthCharanMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="themes/bootstrap_9.css" rel="stylesheet" />
    <link href="themes/custom_9.css" rel="stylesheet" />
    </head>
<body>
    <form id="form1" runat="server">
    <div class="jumbotron">
   <center> <h1>
     Candidates for Chaturth Charan</h1></center>
            </div><div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
      <ItemTemplate>
      <table cellpadding="3" cellspacing="3">
        <tr>
        <th>
        <asp:Label ID="lblSrNo" runat="server" Text="Sr No."></asp:Label>
        </th>
        <th>
            <asp:Label ID="lblCandidates" runat="server" Text="Candidates"></asp:Label>
        </th>
        <th>
        <asp:Label ID="lblDetails" runat="server" Text="Details"></asp:Label>
        </th>
        </tr>
        <tr>
        <td>
        <asp:Label ID="SrNo" runat="server" Text='<%#Eval("SrNo") %>'></asp:Label>
        </td>
        <td>
        <asp:Label ID="NameOfTheCub" runat="server" Text='<%#Eval("NameOfTheCub") %>'></asp:Label>
        </td>
        <td>
        <a href='ChaturthCharanFormPrintForUser.aspx?NameOfTheCub=<%#Eval("NameOfTheCub") %>'>Click To See</a>
        </td>
        </tr>
        
        </table>
      </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [NameOfTheCub], [SrNo] FROM [ChaturthCharan]"></asp:SqlDataSource>
    </div>
  
       </form>
</body>
</html>
