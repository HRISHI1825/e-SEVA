<%@ Page Language="C#" AutoEventWireup="true" CodeFile="standardlist.aspx.cs" Inherits="standardlist" %>

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
    <script type="text/javascript">
        function printpage() {
            var printbutton = document.getElementById("printpagebutton");
            var ddl1 = document.getElementById("ddlYear");
            var ddl2 = document.getElementById("ddlStandard");
            var lbl1 = document.getElementById("lblYear");
            var lbl2 = document.getElementById("lblStandard");
            printbutton.style.visibility = 'hidden';
            ddl1.style.visibility = 'hidden';
            ddl2.style.visibility = 'hidden';
            lbl1.style.visibility = 'hidden';
            lbl2.style.visibility = 'hidden';
            window.print();
            printbutton.style.visibility = 'visible';
        }
</script>
    
</head>
<body>
<div class="jumbotron">
  <center>  
   <h1>Students List</h1>
      </center>
      </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
    <form id="form1" runat="server"  class="form-horizontal">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="ddlYear" ForeColor="Red" ToolTip="Enter Date">*</asp:RequiredFieldValidator>
    <div class="col-lg-5">
        <asp:DropDownList ID="ddlYear" runat="server" CssClass="dropdown" 
            AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Year" 
            DataValueField="Year">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [Year] FROM [StudentTable]">
        </asp:SqlDataSource>
    </div>
    </div>
     <div class="form-group">
        <asp:Label ID="lblStandard" runat="server" Text="Select Standard" CssClass="col-lg-3 control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="ddlStandard" ForeColor="Red" ToolTip="Enter Date">*</asp:RequiredFieldValidator>
    <div class="col-lg-5">
        <asp:DropDownList ID="ddlStandard" runat="server" CssClass="dropdown" 
            AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="StudStandard" 
            DataValueField="StudStandard">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [StudStandard] FROM [StudentTable] WHERE ([Year] = @Year)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlYear" Name="Year" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="100%">
            <Columns>
                <asp:BoundField DataField="SchoolName" HeaderText="SchoolName" 
                    SortExpression="SchoolName" />
                <asp:BoundField DataField="UnitName" HeaderText="UnitName" 
                    SortExpression="UnitName" />
                <asp:BoundField DataField="UnitType" HeaderText="UnitType" 
                    SortExpression="UnitType" />
                <asp:BoundField DataField="StudFullName" HeaderText="StudFullName" 
                    SortExpression="StudFullName" />
                <asp:BoundField DataField="StudDOB" HeaderText="StudDOB" 
                    SortExpression="StudDOB" />
                <asp:BoundField DataField="StudStandard" HeaderText="StudStandard" 
                    SortExpression="StudStandard" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [SchoolName], [UnitName], [UnitType], [StudFullName], [StudDOB], [StudStandard] FROM [StudentTable] WHERE (([Year] = @Year) AND ([StudStandard] = @StudStandard))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlYear" Name="Year" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlStandard" Name="StudStandard" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="form-group">
         <div class="col-lg-5 col-lg-offset-3">
            <input type="button" id="printpagebutton" value="print" onclick="printpage()" class="btn btn-primary"/>
        </div></div>
   </fieldset>
   </form>
   </div>
   </body>
   </html>
