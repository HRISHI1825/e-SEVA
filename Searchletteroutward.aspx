<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Searchletteroutward.aspx.cs" Inherits="letteroutward1" %>

<!DOCTYPE html>

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
        .style4
        {
            width: 76px;
        }
        .style5
        {
            width: 229px;
        }
        .style6
        {
            width: 65px;
        }
        .style7
        {
            width: 110px;
        }
        .style8
        {
            width: 219px;
        }
        .style9
        {
            width: 203px;
        }
        .style10
        {
            width: 61px;
        }
        .style11
        {
            width: 177px;
        }
        .style12
        {
            width: 153px;
        }
        .style13
        {
            width: 36px;
        }
        .style14
        {
            width: 40px;
        }
    </style>
</head>
<body>
    
    <div class="jumbotron">
               <center><h1>Outward Letters</h1></center>
    </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblSearch" runat="server" Text="Search" CssClass="col-lg-3 control-label"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtSearch" ErrorMessage="RequiredFieldValidator" 
            Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
                onclick="btn2_Click"/>
        </div>
    </div>
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" Width="100%">
    <HeaderTemplate>
     <table width="100%"  style=" border-collapse:collapse">
        <tr>
        <th style=" border-collapse:collapse" class="style7">
            <asp:Label ID="lblOutwardDate" runat="server" Text="Outward Date" CssClass="col-lg-3 control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style4">
            <asp:Label ID="lblOutwardLetterNo1" runat="server" Text="Letter No." CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style5">
            <asp:Label ID="lblTo" runat="server" Text="To" CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style8">
            <asp:Label ID="lblAddress" runat="server" Text="Address" CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style9">
            <asp:Label ID="lblTopic" runat="server" Text="Topic" CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style10">
            <asp:Label ID="lblFileNo" runat="server" Text="File No." 
                CssClass=" control-label" Width="60px"></asp:Label>
        </th>
         <th style=" border-collapse:collapse" class="style11">
            <asp:Label ID="lblHowSend" runat="server" Text="How Send" CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style12">
            <asp:Label ID="lbLetter" runat="server" Text="Letter" CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" colspan="2">
            <asp:Label ID="lblStampUsed" runat="server" Text="Stamp Used" 
                CssClass=" control-label" Width="99px"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" colspan="2">
            <asp:Label ID="lblStampPurchased" runat="server" Text="Stamp Purchased" 
                CssClass="control-label" Width="90px"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" colspan="2">
            <asp:Label ID="lblRemininigStamp" runat="server" Text="Remininig Stamp" CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse">
            <asp:Label ID="lblStatus" runat="server" Text="Status" CssClass="control-label" ></asp:Label>
        </th>
        </tr>

   <tr>
        <td style=" border-collapse:collapse" class="style7"></td>
            <td style=" border-collapse:collapse" class="style4"></td>
            <td style=" border-collapse:collapse" class="style5"></td>
        <td style=" border-collapse:collapse" class="style8"></td>
        <td style=" border-collapse:collapse" class="style9"></td>
        <td style=" border-collapse:collapse" class="style10"></td>
        <td style=" border-collapse:collapse" class="style11"></td>
        <td style=" border-collapse:collapse" class="style12"></td>
        <th style=" border-collapse:collapse" class="style14">
            <asp:Label ID="Label1" runat="server" Text="Rs." CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style13">
            <asp:Label ID="Label2" runat="server" Text="Ps." CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style14">
            <asp:Label ID="Label3" runat="server" Text="Rs." CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style13">
            <asp:Label ID="Label4" runat="server" Text="Ps." CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style14">
            <asp:Label ID="Label5" runat="server" Text="Rs" CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style13">
            <asp:Label ID="Label6" runat="server" Text="Ps." CssClass=" control-label"></asp:Label>
        </th>
        <td style=" border-collapse:collapse"></td>
        </tr>
        </table>
    
    
 </HeaderTemplate>
        <ItemTemplate>
        <table width="100%"  style=" border-collapse:collapse">

        <tr>
        <td style=" border-collapse:collapse" class="style7">
         <asp:Label ID="OutwardDateLabel" runat="server" Text='<%# Eval("OutwardDate") %>' CssClass="col-lg-3 control-label" />       
        </td>
        <td style=" border-collapse:collapse"  class="style4">
        <asp:Label ID="OutwardLetterNo1Label" runat="server" 
                    Text='<%# Eval("OutwardLetterNo1") %>' CssClass="control-label" />
                    
        </td>
        <td style=" border-collapse:collapse" class="style5">
        <asp:Label ID="OutwardToLabel" runat="server" Text='<%# Eval("OutwardTo") %>' CssClass="control-label" />
                    
        </td>
        <td style=" border-collapse:collapse" class="style8">
         <asp:Label ID="OutwardAddressLabel" runat="server" 
                    Text='<%# Eval("OutwardAddress") %>' CssClass="control-label" />
                  
        </td>
        <td style=" border-collapse:collapse" class="style9">
        <asp:Label ID="OutwardtopicLabel" runat="server" 
                    Text='<%# Eval("Outwardtopic") %>' CssClass="control-label" />
                </td>
                <td style=" border-collapse:collapse" class="style10">
               <asp:Label ID="OutwardFileNoLabel" runat="server" 
                    Text='<%# Eval("OutwardFileNo") %>' CssClass="control-label" />
        
                </td>

                <td style=" border-collapse:collapse" class="style11">
                <asp:Label ID="HowSendLabel" runat="server" 
                    Text='<%# Eval("HowSend") %>' CssClass="control-label" />
                
                </td>
                 <td style=" border-collapse:collapse" class="style12">
                 <a href='OutwardLetter/<%# Eval("Outletter") %>'>Click To See</a>
                
                </td>
                <td style=" border-collapse:collapse" class="style14">
                <asp:Label ID="StampUsedLabel" runat="server" 
                    Text='<%# Eval("StampUsed") %>' CssClass="control-label" />
                </td>
                <td style=" border-collapse:collapse" class="style13">
                <asp:Label ID="PsLabel" runat="server" 
                    Text='<%# Eval("Ps") %>' CssClass="control-label" />
                </td>
                <td style=" border-collapse:collapse" class="style14">
                <asp:Label ID="StamppurchasedLabel" runat="server" 
                    Text='<%# Eval("Stamppurchased") %>' CssClass="control-label" />
                </td>
                <td style=" border-collapse:collapse" class="style13">
                <asp:Label ID="Ps1Label" runat="server" 
                    Text='<%# Eval("Ps1") %>' CssClass="control-label" />
                </td>
                <td style=" border-collapse:collapse" class="style14">
                <asp:Label ID="RemainingStampLabel" runat="server" 
                    Text='<%# Eval("RemainingStamp") %>' CssClass="control-label" />
                </td>
                <td style=" border-collapse:collapse" class="style13">
                <asp:Label ID="Ps3Label" runat="server" 
                    Text='<%# Eval("Ps3") %>' CssClass="control-label" />
                </td>
                <td style=" border-collapse:collapse">
                <asp:Label ID="OutwardStatusLabel" runat="server" 
                    Text='<%# Eval("OutwardStatus") %>' CssClass="control-label" />
                </td>
               
               </tr>
        </table>
        </ItemTemplate>
        <SeparatorTemplate>
        <hr width="1px" />
        </SeparatorTemplate>
    </asp:DataList>
   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            
            
            SelectCommand="SELECT * FROM OutwardLetter WHERE (OutwardFileNo LIKE '%' + @OutwardFileNo + '%') OR (OutwardStatus LIKE '%' + @OutwardStatus + '%') OR (OutwardTo LIKE '%' + @OutwardTo + '%') OR (Outwardtopic LIKE '%' + @Outwardtopic + '%') OR (OutwardDate LIKE '%' + @OutwardDate + '%')">
       <SelectParameters>
           <asp:ControlParameter ControlID="txtSearch" Name="OutwardFileNo" 
               PropertyName="Text" Type="Int32" />
           <asp:ControlParameter ControlID="txtSearch" Name="OutwardStatus" 
               PropertyName="Text" Type="String" />
           <asp:ControlParameter ControlID="txtSearch" Name="OutwardTo" 
               PropertyName="Text" Type="String" />
           <asp:ControlParameter ControlID="txtSearch" Name="Outwardtopic" 
               PropertyName="Text" />
           <asp:ControlParameter ControlID="txtSearch" Name="OutwardDate" 
               PropertyName="Text" />
       </SelectParameters>
        </asp:SqlDataSource>
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/letteroutward1.aspx">Back</asp:HyperLink></center>
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
