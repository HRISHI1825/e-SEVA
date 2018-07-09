<%@ Page Language="C#" AutoEventWireup="true" CodeFile="letterinward1.aspx.cs" Inherits="letterinward1" %>

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
   
    <style type="text/css">
        .style1
        {
            width: 115px;
        }
        .style2
        {
            width: 102px;
        }
        .style3
        {
            width: 112px;
        }
        .style4
        {
            width: 110px;
        }
        .style5
        {
            width: 101px;
        }
        .style6
        {
            width: 148px;
        }
        .style7
        {
            width: 92px;
        }
        .style8
        {
            width: 68px;
        }
    </style>
   
</head>
<body>
    
    <div class="jumbotron">
               <center><h1>Inward Letters</h1></center>
    </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
        <div class="form-group">
        
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="100%">
    <HeaderTemplate>
    <table width="100%" style=" border-collapse:collapse">
        <tr>
        <td style=" border-collapse:collapse; " class="style1">
            <asp:Label ID="lblInwardNo" runat="server" Text="Inward No" CssClass="col-lg-3 control-label"></asp:Label>
        </td>
        <td style=" border-collapse:collapse; width:190px;">
            <asp:Label ID="lblAcceptingDate" runat="server" Text="Accepting Date" CssClass="control-label"></asp:Label>
        </td>
        <td  style=" border-collapse:collapse; " class="style2">
            <asp:Label ID="lblLetterNo" runat="server" Text="Letter No." CssClass="control-label"></asp:Label>
        </td>
        <td style=" border-collapse:collapse; " class="style3">
            <asp:Label ID="lblDate" runat="server" Text="Date" CssClass=" control-label"></asp:Label>
        </td>
        <td style=" border-collapse:collapse; " class="style4">
            <asp:Label ID="lblFrom" runat="server" Text="From" CssClass=" control-label"></asp:Label>
        </td>
        <td style=" border-collapse:collapse; " class="style5">
            <asp:Label ID="lblLetter" runat="server" Text="Letter" CssClass=" control-label"></asp:Label>
        </td>
         <td style=" border-collapse:collapse; " class="style6">
            <asp:Label ID="lblTopic" runat="server" Text="Topic" CssClass=" control-label"></asp:Label>
        </td>
        <td style=" border-collapse:collapse; " class="style7">
            <asp:Label ID="lblFileNo" runat="server" Text="File No." CssClass="control-label"></asp:Label>
        </td>
        <td style=" border-collapse:collapse; width:113px;">
            <asp:Label ID="lblStatus" runat="server" Text="Status" CssClass=" control-label"></asp:Label>
        </td>
        </tr>
        </table>
    </HeaderTemplate>
        <ItemTemplate>
        <table width="100%" style=" border-collapse:collapse">
        <tr>
        <td style=" border-collapse:collapse; " class="style1">
         <asp:Label ID="InwardNoLabel" runat="server" Text='<%# Eval("InwardNo") %>' CssClass="col-lg-3 control-label" />       
        </td>
        <td style=" border-collapse:collapse; width:190px;">
        <asp:Label ID="LetterAcceptingDateLabel" runat="server" 
                    Text='<%# Eval("LetterAcceptingDate") %>' CssClass="control-label" />
                    
        </td>
        <td style=" border-collapse:collapse; " class="style2">
        <asp:Label ID="LetterNo1Label" runat="server" Text='<%# Eval("LetterNo1") %>' CssClass=" control-label" />
                    
        </td>
        <td style=" border-collapse:collapse; " class="style3">
         <asp:Label ID="LetterDateLabel" runat="server" 
                    Text='<%# Eval("LetterDate") %>' CssClass="control-label" />
                  
        </td>
        <td style=" border-collapse:collapse; " class="style4">
        <asp:Label ID="LetterFromLabel" runat="server" 
                    Text='<%# Eval("LetterFrom") %>' CssClass="control-label" />
                </td>
                <td style=" border-collapse:collapse; " class="style5">
                <a href='InwardLetter/<%# Eval("InLetter") %>'>Click To See</a>
                </td>

                <td style=" border-collapse:collapse; " class="style6">
                <asp:Label ID="TopicLetterLabel" runat="server" 
                    Text='<%# Eval("TopicLetter") %>' CssClass="control-label" />
                
                </td>
                 <td style=" border-collapse:collapse; " class="style7">
                <asp:Label ID="FileNoLabel" runat="server" Text='<%# Eval("FileNo") %>' CssClass="control-label" />
                
                </td>
                <td style=" border-collapse:collapse; width:113px;">
                <asp:Label ID="InwardStatusLabel" runat="server" 
                    Text='<%# Eval("InwardStatus") %>' CssClass=" control-label" />
                
                </td>
               
               </tr>
        </table>
        </ItemTemplate>
        <SeparatorTemplate>
        <hr width="1px" />
        </SeparatorTemplate>
    </asp:DataList>
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [InwardLetters]"></asp:SqlDataSource>
        </div>
        <center>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Searchletterinward.aspx">Click Here for Searching</asp:HyperLink></center>
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
         <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Home</asp:HyperLink></center>
        </td><td rowspan="2"  width="107px" align="center">
        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
            Width="100px" />
        </td></tr>
      <tr><td colspan="2" >
        <center>
        <marquee behavior="alternate"><asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" 
                Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Developers.aspx">Developer&#39;s Site</asp:HyperLink></marquee></center>
          </td></tr>
       
    
    </table>
    </div>
    </center>
        </form>
        </div>
</body>
</html>
