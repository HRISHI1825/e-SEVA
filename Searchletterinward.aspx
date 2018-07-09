<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Searchletterinward.aspx.cs" Inherits="letterinward" %>

<!DOCTYPE html>

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
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" 
            Width="100%">
            <HeaderTemplate>
            <table width="100%" style=" border-collapse:collapse">
        <tr>
        <th style=" border-collapse:collapse" class="style1">
            <asp:Label ID="lblInwardNo" runat="server" Text="Inward No" CssClass="col-lg-3 control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse; width:190px;" >
            <asp:Label ID="lblAcceptingDate" runat="server" Text="Accepting Date" CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style2">
            <asp:Label ID="lblLetterNo" runat="server" Text="Letter No." CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style3">
            <asp:Label ID="lblDate" runat="server" Text="Date" CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style4">
            <asp:Label ID="lblFrom" runat="server" Text="From" CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style5">
            <asp:Label ID="lblLetter" runat="server" Text="Letter" CssClass=" control-label"></asp:Label>
        </th>
         <th style=" border-collapse:collapse" class="style6">
            <asp:Label ID="lblTopic" runat="server" Text="Topic" CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style7">
            <asp:Label ID="lblFileNo" runat="server" Text="File No." CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse; width:113px;">
            <asp:Label ID="lblStatus" runat="server" Text="Status" CssClass="control-label"></asp:Label>
        </th>
        </tr>
        </table>
            </HeaderTemplate>
        <ItemTemplate>
        <table width="100%" style=" border-collapse:collapse">
        <tr>
        <td style=" border-collapse:collapse" class="style1">
         <asp:Label ID="InwardNoLabel" runat="server" Text='<%# Eval("InwardNo") %>' CssClass="col-lg-3 control-label" />       
        </td>
        <td style=" border-collapse:collapse; width:190px;">
        <asp:Label ID="LetterAcceptingDateLabel" runat="server" 
                    Text='<%# Eval("LetterAcceptingDate") %>' CssClass="control-label" />
                    
        </td>
        <td style=" border-collapse:collapse" class="style2">
        <asp:Label ID="LetterNo1Label" runat="server" Text='<%# Eval("LetterNo1") %>' CssClass="control-label" />
                    
        </td>
        <td style=" border-collapse:collapse" class="style3">
         <asp:Label ID="LetterDateLabel" runat="server" 
                    Text='<%# Eval("LetterDate") %>' CssClass="control-label" />
                  
        </td>
        <td style=" border-collapse:collapse" class="style4">
        <asp:Label ID="LetterFromLabel" runat="server" 
                    Text='<%# Eval("LetterFrom") %>' CssClass=" control-label" />
                </td>
                <td style=" border-collapse:collapse" class="style5">
                <a href='InwardLetter/<%# Eval("InLetter") %>'>Click To See</a>
                </td>

                <td style=" border-collapse:collapse" class="style6">
                <asp:Label ID="TopicLetterLabel" runat="server" 
                    Text='<%# Eval("TopicLetter") %>' CssClass="control-label" />
                
                </td>
                 <td style=" border-collapse:collapse" class="style7">
                <asp:Label ID="FileNoLabel" runat="server" Text='<%# Eval("FileNo") %>' CssClass=" control-label" />
                
                </td>
                <td style=" border-collapse:collapse; width:113px;">
                <asp:Label ID="InwardStatusLabel" runat="server" 
                    Text='<%# Eval("InwardStatus") %>' CssClass="control-label" />
                
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
            
            
            
            SelectCommand="SELECT * FROM [InwardLetters] WHERE (([FileNo] LIKE '%' + @FileNo + '%') OR ([InwardStatus] LIKE '%' + @InwardStatus + '%') OR ([LetterAcceptingDate] LIKE '%' + @LetterAcceptingDate + '%') OR ([LetterDate] LIKE '%' + @LetterDate + '%') OR ([LetterFrom] LIKE '%' + @LetterFrom + '%') OR ([LetterNo1] LIKE '%' + @LetterNo1 + '%') OR ([TopicLetter] LIKE '%' + @TopicLetter + '%'))">
       <SelectParameters>
           <asp:ControlParameter ControlID="txtSearch" Name="FileNo" PropertyName="Text" />
           <asp:ControlParameter ControlID="txtSearch" Name="InwardStatus" 
               PropertyName="Text" Type="String" />
           <asp:ControlParameter ControlID="txtSearch" Name="LetterAcceptingDate" 
               PropertyName="Text" />
           <asp:ControlParameter ControlID="txtSearch" Name="LetterDate" 
               PropertyName="Text" />
           <asp:ControlParameter ControlID="txtSearch" Name="LetterFrom" PropertyName="Text" 
               Type="String" />
           <asp:ControlParameter ControlID="txtSearch" Name="LetterNo1" 
               PropertyName="Text" />
           <asp:ControlParameter ControlID="txtSearch" Name="TopicLetter" 
               PropertyName="Text" Type="String" />
       </SelectParameters>
        </asp:SqlDataSource>
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/letterinward1.aspx">Back</asp:HyperLink></center>
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
    </fieldset>
        </form>
        </div>
</body>
</html>
