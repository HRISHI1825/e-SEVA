<%@ Page Language="C#" AutoEventWireup="true" CodeFile="originalnewvarshikanudan.aspx.cs" Inherits="WebSquat__Guide_originalnewvarshikanudan" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="../sample1/themes/custom_9.css" rel="stylesheet" /><link href="../sample1/themes/bootstrap_9.css" rel="stylesheet" />
    <link href="themes/bootstrap_9.css" rel="stylesheet" />
    <link href="themes/custom_9.css" rel="stylesheet" />
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
            <asp:Label ID="lblDate" runat="server" Text="Date" CssClass="col-lg-3 control-label  "></asp:Label> 
           
           <div  class="col-lg-5">
            <asp:TextBox runat="server" ID="txtDate" CssClass="form-control"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                   BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
               </ajaxToolkit:CalendarExtender>
          </div>
           </div>
        <div class="form-group">
            <asp:Label ID="lblAmount" runat="server" Text="Amount" CssClass="col-lg-3 control-label  "></asp:Label>
                   <div  class="col-lg-5">
                                    <asp:TextBox runat="server" ID="txtAmt" CssClass="form-control"></asp:TextBox>
           </div> </div>
        <hr />
         <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
      </div>
    </div>
          <hr />
            <asp:SqlDataSource ID="SqldsVarshikAnudan" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [Office] ([VarshikAnudanDate], [VarshikAnudanAmount]) VALUES (@VarshikAnudanDate, @VarshikAnudanAmount)" 
                SelectCommand="SELECT [SrNo], [VarshikAnudanDate], [VarshikAnudanAmount] FROM [Office]" 
                
                
                UpdateCommand="UPDATE [Office] SET [VarshikAnudanDate] = @VarshikAnudanDate, [VarshikAnudanAmount] = @VarshikAnudanAmount WHERE [SrNo] = @SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtDate" DbType="Date" 
                        Name="VarshikAnudanDate" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtAmt" Name="VarshikAnudanAmount" 
                        PropertyName="Text" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="VarshikAnudanDate" />
                    <asp:Parameter Name="VarshikAnudanAmount" Type="Int32" />
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
       </div>
                </div>  
    </fieldset>
    </form>
        </div>
</body>
</html>

