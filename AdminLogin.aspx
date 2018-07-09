<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="StarryNightMoving_StarryNightMoving_adLogin2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8">
	
    <title></title>
    <link href="themes/style2.css" rel="stylesheet" type="text/css" />
    <link href="themes/logstyle.css" rel="stylesheet" type="text/css" />
    <link href="themes/logreset.css" rel="stylesheet" type="text/css" />
    </head>
 <body bgcolor="#ccffff">

    <div class="wrapper">
	<div class="container">
		<h1>ADMIN LOGIN</h1>
        <br />
        <form id="form1" runat="server">
  <div class="flex-row">
    <label class="lf--label" for="username">
      <svg x="0px" y="0px" width="20px" height="20px">
        <path fill="white" d="M8.9,7.2C9,6.9,9,6.7,9,6.5v-4C9,1.1,7.9,0,6.5,0h-1C4.1,0,3,1.1,3,2.5v4c0,0.2,0,0.4,0.1,0.7 C1.3,7.8,0,9.5,0,11.5V13h12v-1.5C12,9.5,10.7,7.8,8.9,7.2z M4,2.5C4,1.7,4.7,1,5.5,1h1C7.3,1,8,1.7,8,2.5v4c0,0.2,0,0.4-0.1,0.6 l0.1,0L7.9,7.3C7.6,7.8,7.1,8.2,6.5,8.2h-1c-0.6,0-1.1-0.4-1.4-0.9L4.1,7.1l0.1,0C4,6.9,4,6.7,4,6.5V2.5z M11,12H1v-0.5 c0-1.6,1-2.9,2.4-3.4c0.5,0.7,1.2,1.1,2.1,1.1h1c0.8,0,1.6-0.4,2.1-1.1C10,8.5,11,9.9,11,11.5V12z"/>
      </svg>
    </label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass ="lf--input " 
          placeholder="Username" Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox><asp:RequiredFieldValidator
                ID="RequiredFieldValidator1" runat="server" 
          ErrorMessage="RequiredFieldValidator" ControlToValidate="txtUsername" 
          ForeColor="Red">*</asp:RequiredFieldValidator>

      
  </div>
  <div class="flex-row">
    <label class="lf--label" for="password">
      <svg x="0px" y="0px" width="15px" height="15px">
        <g>
          <path fill="white" d="M6,2L6,2c0-1.1-1-2-2.1-2H2.1C1,0,0,0.9,0,2.1v0.8C0,4.1,1,5,2.1,5h1.7C5,5,6,4.1,6,2.9V3h5v1h1V3h1v2h1V3h1 V2H6z M5.1,2.9c0,0.7-0.6,1.2-1.3,1.2H2.1c-0.7,0-1.3-0.6-1.3-1.2V2.1c0-0.7,0.6-1.2,1.3-1.2h1.7c0.7,0,1.3,0.6,1.3,1.2V2.9z"/>
        </g>
      </svg>
    </label>
    <asp:TextBox ID="txtPwd" runat="server" CssClass ="lf--input " 
          placeholder="Password" Font-Names="Times New Roman" Font-Size="Large" 
          TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator
                ID="RequiredFieldValidator2" runat="server" 
          ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPwd" 
          ForeColor="Red">*</asp:RequiredFieldValidator>

      
  </div>
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass ="lf--submit " 
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" 
            ForeColor="White" Height="60px" Width="100%" onclick="btnLogin_Click"  />
        </form>

    
    
		
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
    
 <script src="js/myindex.js" type ="text/javascript" ></script>
       

    
    
    
  </body>

</html>
