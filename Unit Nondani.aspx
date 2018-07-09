<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Unit Nondani.aspx.cs" Inherits="_14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="themes/bootstrap_9.css" rel="stylesheet" />
    <link href="themes/custom_9.css" rel="stylesheet" />
</head>
<body>
    <div class="jumbotron">
 <center>
 <h1>Unit Nondani Informatin</h1>
 </center>
    </div>        
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div> 
</div>
<div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblSelectSchoolName" runat="server" Text="Select School Name"></asp:Label>
         <div class="col-lg-5">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sqlds" 
                    DataTextField="SalgnataYear" DataValueField="SalgnataYear">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Sqlds" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [SchoolName] FROM [SchoolTable]"></asp:SqlDataSource>
            </div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="Sqlds1">
            <ItemTemplate>
            <div class="form-group">
               <asp:Label runat="server" ID="lblSchoolName"  CssClass="col-lg-3 control-label" text="School Name"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SchoolName" runat="server" 
                    Text='<%# Eval("SchoolName") %>' />
                    </div>
            </div>
            <div class="form-group">
              <asp:Label runat="server" ID="lblUnitNondaniYear"  CssClass="col-lg-3 control-label" text="Year"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="UnitNondaniYear" runat="server" 
                    Text='<%# Eval("UnitNondaniYear") %>' />
                    </div></div>
                    <div class="form-group">
                <asp:Label runat="server" ID="lblUnitNondaniNoOfUnits"  CssClass="col-lg-3 control-label" text="No. Of Units"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="UnitNondaniNoOfUnits" runat="server" 
                    Text='<%# Eval("UnitNondaniNoOfUnits") %>' />
            </div></div>
            <div class="form-group">
              <asp:Label runat="server" ID="lblUnitNondaniAmount"  CssClass="col-lg-3 control-label" text="Amount"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="UnitNondaniAmount" runat="server" 
                    Text='<%# Eval("UnitNondaniAmount") %>' />
                    </div></div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblUnitNondaniReceiptNo"  CssClass="col-lg-3 control-label" text="Receipt No"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="UnitNondaniReceiptNo" runat="server" 
                    Text='<%# Eval("UnitNondaniReceiptNo") %>' />
            </div></div>
            <div class="form-group">
               <asp:Label runat="server" ID="lblUnitNondaniReceiptNoDate"  CssClass="col-lg-3 control-label" text="Receipt No Date"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="UnitNondaniReceiptNoDate" runat="server" 
                    Text='<%# Eval("UnitNondaniReceiptNoDate") %>' />
            </div></div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT [SchoolName], [UnitNondaniYear], [UnitNondaniNoOfUnits], [UnitNondaniAmount], [UnitNondaniReceiptNo], [UnitNondaniReceiptNoDate] FROM [SchoolTable] WHERE ([SchoolName] = @SchoolName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" 
                    Name="SchoolName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </fieldset>
    </form>
    </div>
</body>
</html>
