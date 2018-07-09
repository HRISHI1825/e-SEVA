﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Magzine.aspx.cs" Inherits="Magzine" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
       <h2>List of Schools who Pay their Magzine Fees</h2>
            </center>
            </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
   <div class="jumbotron">
   <form id="form1" runat="server" class="form-horizontal">
   <fieldset>
   <center>
   <div class="form-group">
       <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" 
           ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
   <div class="col-lg-5">
   <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" 
           DataTextField="Year" DataValueField="Year" AutoPostBack="True" CssClass="dropdown"></asp:DropDownList>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           
           SelectCommand="SELECT DISTINCT [Year] FROM [SchoolTable] WHERE ([Year] IS NOT NULL)">
       </asp:SqlDataSource>
   </div>
   </div>
       <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="sqldsMagzine" 
           DataTextField="SchoolName" DataValueField="SchoolName">
       </asp:CheckBoxList><hr />
        <asp:SqlDataSource ID="sqldsMagzine" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           
           
           
           
           
           SelectCommand="SELECT DISTINCT [SchoolName] FROM [SchoolTable] WHERE (([FeesPaidMagzine] = @FeesPaidMagzine) AND ([Year] = @Year) AND ([CheckedMagzine] IS NULL))">
            <SelectParameters>
                <asp:ControlParameter ControlID="HiddenField1" Name="FeesPaidMagzine" 
                    PropertyName="Value" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Year" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
       </asp:SqlDataSource>
       <asp:Button ID="btn" runat="server" onclick="btn_Click" Text="Submit" CssClass="btn btn-primary" />
       <asp:HiddenField ID="HiddenField1" runat="server" />
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT * FROM [ChaturthCharan]"></asp:SqlDataSource><hr />
           <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/magzinedata1.aspx">Click Here for the payment</asp:HyperLink><br />
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Magzine2.aspx">Click Here to see the list of Schools who paid their magzine fees and their names are also included in letter</asp:HyperLink>
    
    </center>
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
         <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Home</asp:HyperLink></center>
        </td><td rowspan="2"  width="107px" align="center">
        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
            Width="100px" />
        </td></tr>
      <tr><td colspan="2" >
        <center>
        <marquee behavior="alternate"><asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" 
                Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Developers.aspx">Developer&#39;s Site</asp:HyperLink></marquee></center>
          </td></tr>
       
    
    </table>
    </div>
    </center>
    </form>
    </div>
   
</body>
</html>