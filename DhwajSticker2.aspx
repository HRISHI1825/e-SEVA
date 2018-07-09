<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DhwajSticker2.aspx.cs" Inherits="DhwajSticker2" %>

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
        <h1>Unit Information</h1>
 </center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="Sqlds" Width="100%">
        <ItemTemplate>
        <div class="form-group">
            <asp:Label ID="lblNameOfSchool" runat="server" CssClass="col-lg-3 control-label" Text="Name Of School"></asp:Label>
        <div class="col-lg-5">
        <asp:Label ID="lblNameOfSchool1" runat="server" CssClass="form-control" Text='<%# Eval("SchoolName") %>'></asp:Label>
        </div>
        </div>
       <div class="form-group">
           <asp:Label ID="lblAddress" runat="server" Text="Address" CssClass="col-lg-3 control-label"></asp:Label>
        <div class="col-lg-5">
        <asp:Label ID="lblAddress1" runat="server" CssClass="form-control" Text='<%# Eval("PermanentAddress") %>'></asp:Label>
        </div></div>
        <div class="form-group">
            <asp:Label ID="lblNameOfUnit" runat="server" Text="Name Of Unit" CssClass="col-lg-3 control-label"></asp:Label>
        <div class="col-lg-5">
        <asp:Label ID="lblNameOfUnit1" runat="server" CssClass="form-control" Text='<%# Eval("UnitName") %>'></asp:Label>
        </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lblFees" runat="server" Text="Fees" CssClass="col-lg-3 control-label"></asp:Label>
            <div class="col-lg-5">
             <asp:Label ID="lblFees1" runat="server" CssClass="form-control" Text='<%# Eval("DhwajStickerFees") %>'></asp:Label>
             </div></div>
        <div class="form-group">
            <asp:Label ID="lblDistrictLevel" runat="server" Text="District Level" CssClass="col-lg-3 control-label"></asp:Label>
            <div class="col-lg-5">
            <asp:Label ID="lblDistrictLevel1" runat="server" CssClass="form-control" Text='<%# Eval("DhwajStickerDistrictLevel")%>'></asp:Label>
            </div></div>
            <div class="form-group">
                <asp:Label ID="lblStateLevel" runat="server" Text="State Level" CssClass="col-lg-3 control-label"></asp:Label>
                <div class="col-lg-5">
                 <asp:Label ID="lblStateLevel1" runat="server" CssClass="form-control" Text='<%# Eval("DhwajStickerStateLevel")%>'></asp:Label>
                 </div></div>
        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            SelectCommand="SELECT [UnitName], [SchoolName], [PermanentAddress], [DhwajStickerFees], [DhwajStickerDistrictLevel], [DhwajStickerStateLevel] FROM [SchoolTable] WHERE (([UnitName] = @UnitName) AND ([Year] = @Year))">
            <SelectParameters>
                <asp:QueryStringParameter Name="UnitName" QueryStringField="UnitName" 
                    Type="String" />
                <asp:QueryStringParameter Name="Year" QueryStringField="Year" Type="String" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/DhwajSticker.aspx">Back</asp:HyperLink></center>
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

    </form>
    </div>
</body>
</html>
