<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FAQs.aspx.cs" Inherits="FAQs" %>

<!doctype html>
<html lang="us">
<head>
	<meta charset="utf-8">
	<title>jQuery UI Example Page</title>
    
    <script src="jquery-ui-1.11.1/external/jquery/jquery.js" type="text/javascript"></script>
    <link href="jquery-ui-1.11.1/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui-1.11.1/jquery-ui.js" type="text/javascript"></script>
    <link href="jquery-ui-1.11.1/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui-1.11.1/jquery-ui.min.js" type="text/javascript"></script>
    <link href="jquery-ui-1.11.1/jquery-ui.structure.css" rel="stylesheet" type="text/css" />
    <link href="jquery-ui-1.11.1/jquery-ui.structure.min.css" rel="stylesheet" type="text/css" />
    <link href="jquery-ui-1.11.1/jquery-ui.theme.css" rel="stylesheet" type="text/css" />
    <link href="jquery-ui-1.11.1/jquery-ui.theme.min.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	body{
		font: 62.5% "Trebuchet MS", sans-serif;
		margin: 50px;
	}
	.demoHeaders {
		margin-top: 2em;
	}
	#dialog-link {
		padding: .4em 1em .4em 20px;
		text-decoration: none;
		position: relative;
	}
	#dialog-link span.ui-icon {
		margin: 0 5px 0 0;
		position: absolute;
		left: .2em;
		top: 50%;
		margin-top: -8px;
	}
	#icons {
		margin: 0;
		padding: 0;
	}
	#icons li {
		margin: 2px;
		position: relative;
		padding: 4px 0;
		cursor: pointer;
		float: left;
		list-style: none;
	}
	#icons span.ui-icon {
		float: left;
		margin: 0 4px;
	}
	.fakewindowcontain .ui-widget-overlay {
		position: absolute;
	}
	select {
		width: 200px;
	}
	</style>
</head>
<body>
<div class="jumbotron">
  <center>  
   <h1>FAQs</h1>
      </center>
      </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
    <form id="form1" runat="server"  class="form-horizontal">
    <fieldset>
    <ul>
		<li><a href="#tabs-1">hii</a></li>
        </ul>
    <div id="tabs-1">
    bye</asp:label>
    </div>
    </ItemTemplate>
    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Questions], [Answers] FROM [Office]"></asp:SqlDataSource>
    </fieldset>
    <hr />
    <center>
        <div>
    <table style="height:113px;">
    <tr><td rowspan="2" width="107px" align="center">
        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
            Width="100px" />
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Schooldashboard.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" 
             NavigateUrl="~/Schooldashboard.aspx">Home</asp:HyperLink></center>
        </td><td rowspan="2"  width="107px" align="center">
        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
            Width="100px" />
        </td></tr>
      <tr><td colspan="2" >
        <center>
        <marquee behavior="alternate"><asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
                Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Developers.aspx">Developer&#39;s Site</asp:HyperLink></marquee></center>
          </td></tr>
       
    
    </table>
    </div>
    </center>
    </form>
    </div>
</body>
</html>
