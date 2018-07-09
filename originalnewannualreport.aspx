<%@ Page Language="C#" AutoEventWireup="true" CodeFile="originalnewannualreport.aspx.cs" Inherits="WebSquat__Guide_originalannualreport" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="themes/bootstrap_9.css" rel="stylesheet" /><link href="themes/custom_9.css" rel="stylesheet" />
</head>
<body>
     <div class="jumbotron">
 <center><h1>New Entry</h1>
 </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
   
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
            <div class="form-group">
                        <asp:Label ID="lblYear" runat="server" Text="Year"  CssClass="col-lg-3 control-label"></asp:Label>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtYear" Cssclass="form-control"  runat="server"></asp:TextBox>
          </div>
           </div>
        <div class="form-group">
            <asp:Label ID="lblReport" runat="server" Text="Report" CssClass="col-lg-3 control-label" ></asp:Label>
           <div  class="col-lg-5">
 <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
           </div> </div>
       <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="Button1" runat="server" Text="Cancle" class="btn btn-default" />
          <asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-primary" 
              onclick="Button2_Click" />
      </div>
    </div>
            <hr />
            <asp:SqlDataSource ID="SqlDsAnnualReport" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @original_SrNo" 
                InsertCommand="INSERT INTO [Office] ([Year], [Report]) VALUES (@Year, @Report)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [SrNo], [Year], [Report] FROM [Office]" 
                
                UpdateCommand="UPDATE [Office] SET [Year] = @Year, [Report] = @Report WHERE [SrNo] = @original_SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="original_SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtYear" Name="Year" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="FileUpload1" Name="Report" 
                        PropertyName="FileName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Year" Type="String" />
                    <asp:Parameter Name="Report" Type="String" />
                    <asp:Parameter Name="original_SrNo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
       <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
       
                </div></div> 
    </fieldset>
    </form>
        </div>
</body>
</html>

