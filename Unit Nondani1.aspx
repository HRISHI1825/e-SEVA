<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Unit Nondani1.aspx.cs" Inherits="_14_02" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
    <h1>New Entry</h1>
 </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="form-group">
             <asp:Label ID="lblSelectTaluka" runat="server"  class="col-lg-3 control-label" Text="Select Taluka" ></asp:Label>
           <div  class="col-lg-5">
               <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sqlds" 
                   DataTextField="Taluka" DataValueField="Taluka">
               </asp:DropDownList>
               <asp:SqlDataSource ID="Sqlds" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                   
                   SelectCommand="SELECT DISTINCT [Taluka] FROM [SchoolTable] WHERE ([Year] = @Year)">
                   <SelectParameters>
                       <asp:SessionParameter Name="Year" SessionField="Year" Type="Int32" />
                   </SelectParameters>
               </asp:SqlDataSource>
               select taluka then select section and on that basis generate school names unit 
               name both unit leader names unit&nbsp; leader training receipt no and date total 
               no of students total no of unit leaders sum of total students and total unit 
               leader sum of students according to their standards</div>
           </div>
            <div class="form-group">
             <asp:Label ID="lblSelectSection" runat="server"  class="col-lg-3 control-label" Text="Select Section" ></asp:Label>
           <div  class="col-lg-5">
               <asp:DropDownList ID="DropDownList2" runat="server" 
                   DataSourceID="SqlDataSource1" DataTextField="UnitType" 
                   DataValueField="UnitType" 
                   onselectedindexchanged="DropDownList2_SelectedIndexChanged">
               </asp:DropDownList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                   SelectCommand="SELECT DISTINCT [UnitType] FROM [SchoolTable] WHERE ([Year] = @Year)">
                   <SelectParameters>
                       <asp:SessionParameter Name="Year" SessionField="Year" Type="Int32" />
                   </SelectParameters>
               </asp:SqlDataSource>
          </div>
           </div>
         <hr />
            <asp:SqlDataSource ID="SqldsUnitNondani" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [SchoolTable] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [SchoolTable] ([UnitNondaniYear], [UnitNondaniNoOfUnits], [UnitNondaniAmount], [UnitNondaniReceiptNo], [UnitNondaniReceiptNoDate], [SchoolName]) VALUES (@UnitNondaniYear, @UnitNondaniNoOfUnits, @UnitNondaniAmount, @UnitNondaniReceiptNo, @UnitNondaniReceiptNoDate, @SchoolName)" 
                SelectCommand="SELECT [UnitNondaniYear], [UnitNondaniNoOfUnits], [UnitNondaniAmount], [UnitNondaniReceiptNo], [UnitNondaniReceiptNoDate], [SrNo], [SchoolName] FROM [SchoolTable]" 
                
            UpdateCommand="UPDATE [SchoolTable] SET [UnitNondaniYear] = @UnitNondaniYear, [UnitNondaniNoOfUnits] = @UnitNondaniNoOfUnits, [UnitNondaniAmount] = @UnitNondaniAmount, [UnitNondaniReceiptNo] = @UnitNondaniReceiptNo, [UnitNondaniReceiptNoDate] = @UnitNondaniReceiptNoDate WHERE [SchoolName] = @SchoolName">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UnitNondaniYear" Type="Int32" />
                    <asp:Parameter Name="UnitNondaniNoOfUnits" Type="Int32" />
                    <asp:Parameter Name="UnitNondaniAmount" Type="Int32" />
                    <asp:Parameter Name="UnitNondaniReceiptNo" Type="Int32" />
                    <asp:Parameter Name="UnitNondaniReceiptNoDate" DbType="Date" />
                    <asp:Parameter Name="SchoolName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtYear" Name="UnitNondaniYear" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtNoOfUnits" Name="UnitNondaniNoOfUnits" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtAmount" Name="UnitNondaniAmount" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtReceiptNo" Name="UnitNondaniReceiptNo" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtReceiptNoDate" DbType="Date" 
                        Name="UnitNondaniReceiptNoDate" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="SchoolName" 
                        PropertyName="SelectedValue" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ChaturthCharan]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ChaturthCharan]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ChaturthCharan]"></asp:SqlDataSource>
            <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
       
                </div> </div>
    </fieldset>
    </form>
        </div>

</body>
</html>


