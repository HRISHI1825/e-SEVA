<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RashtrapatiGuideAward2.aspx.cs" Inherits="RashtrapatiGuideAward2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link href="themes/bootstrap_9.css" rel="stylesheet" type="text/css" />
    <link href="themes/custom_9.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class ="jumbotron">
    <center >
    <h1>List of Passed Candidates</h1>
    </center>
    </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="jumbotron">
    <div class="form-group">
        <asp:CheckBoxList ID="CheckBoxList1" CssClass="form-control" runat="server">
        </asp:CheckBoxList>
   </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
 <div class="col-lg-5 col-lg-offset-3">
                 <asp:Button ID="btn1" runat="server" Text="Submit" Font-Bold="True" 
            Font-Names="Times New Roman"  CssClass="btn btn-primary" Font-Size="Large" 
                     />
          </div> 
    </div>
    </fieldset>
    </form>
    </body>
</html>
