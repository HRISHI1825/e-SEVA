﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Posts.aspx.cs" Inherits="Posts" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="themes2/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="themes2/bootstrap.min.js" type="text/javascript"></script>
    <script src="themes2/carbon.js" type="text/javascript"></script>
    <script src="themes2/custom.js" type="text/javascript"></script>
    <link href="themes2/custom.min.css" rel="stylesheet" type="text/css" />
    <script src="themes2/gsd.js" type="text/javascript"></script>
    <script src="themes2/ga.js" type="text/javascript"></script>
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script>
    
</head>
<body>
<div class="jumbotron">
  <center>  
   <h1>Posts</h1>
      </center>
      </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
    <form id="form1" runat="server"  class="form-horizontal">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblDate" runat="server" Text="Enter Date" CssClass="col-lg-3 control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtDate" ForeColor="Red" ToolTip="Enter Date">*</asp:RequiredFieldValidator>
    <div class="col-lg-5">
    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
            BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
        </ajaxToolkit:CalendarExtender>
    </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lbl" runat="server" Text="Enter Message" CssClass="col-lg-3 control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="txt" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
    <div class="col-lg-5">
    <asp:TextBox ID="txt" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
    </div>
    </div>
    <hr />
    <div class="form-group">
              <div class="col-lg-5 col-lg-offset-3">
 
         <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn2_Click" />
              
     
                  <asp:ScriptManager ID="ScriptManager1" runat="server">
                  </asp:ScriptManager>
              
     
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                      InsertCommand="INSERT INTO [Office] ([PostDate], [Post]) VALUES (@PostDate, @Post)" 
                      SelectCommand="SELECT [SrNo], [PostDate], [Post] FROM [Office]" 
                      
                      UpdateCommand="UPDATE [Office] SET [PostDate] = @PostDate, [Post] = @Post WHERE [SrNo] = @SrNo">
                      <DeleteParameters>
                          <asp:Parameter Name="SrNo" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="PostDate" 
                              PropertyName="Text" />
                          <asp:ControlParameter ControlID="txt" Name="Post" PropertyName="Text" 
                              Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="PostDate" DbType="Date" />
                          <asp:Parameter Name="Post" Type="String" />
                          <asp:Parameter Name="SrNo" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
              
     
      </div>
            </div>
        
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Home</asp:HyperLink></center>
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
