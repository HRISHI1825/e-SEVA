<%@ Page Language="C#" AutoEventWireup="true" CodeFile="training1.aspx.cs" Inherits="WebSquat__Guide_origianlnewtraining" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="themes2/bootstrap.css" rel="stylesheet" type="text/css" />
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
             
               <asp:Label ID="lblTrainingName" runat="server" Text="Training Name" CssClass="col-lg-3 control-label  " ></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="txtTrainingName" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
         <div  class="col-lg-5">
            <asp:TextBox id="txtTrainingName" runat="server" CssClass="form-control" ></asp:TextBox>
 
          </div>
           </div>
        <div class="form-group">
             <asp:Label ID="lblTrainee" runat="server" Text="Trainee" CssClass="col-lg-3 control-label  "></asp:Label> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                    ControlToValidate="txtTrainee" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
    <asp:TextBox id="txtTrainee" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
            </div>
           <div  class="form-group">
            <asp:Label ID="lblDuration" runat="server" Text="Duration" CssClass="col-lg-3 control-label  "></asp:Label> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                    ControlToValidate="txtDuration" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
 <div class="col-lg-5">
    <asp:TextBox id="txtDuration" runat="server" CssClass="form-control" ></asp:TextBox>
         
           </div> </div>
        <div class="form-group">
                <asp:Label ID="lblCertiNo" runat="server" Text="Certificate No" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                    ControlToValidate="txtCertiNo" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox id="txtCertiNo" runat="server"  CssClass="form-control"></asp:TextBox>        </div></div>
        <div class="form-group">
               <asp:Label ID="lblDate" runat="server" Text="Date" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                    ControlToValidate="txtDate" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
       <div class="col-lg-5">
            <asp:TextBox id="txtDate" runat="server" CssClass="form-control" ></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
            </ajaxToolkit:CalendarExtender>
       </div> 
            </div>
        <div class="form-group">
            <asp:Label ID="lblTrainingHead" runat="server" Text="Training Head" CssClass="col-lg-3 control-label  "></asp:Label> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                    ControlToValidate="txtTrainingHead" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
        <div  class="col-lg-5">
                   <asp:TextBox id="txtTrainingHead" runat="server"  CssClass="form-control"></asp:TextBox>           </div> </div>
        <div class="form-group">
             <asp:Label ID="lblPlace" runat="server" Text="Place" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                    ControlToValidate="txtPlace" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
          <asp:TextBox id="txtPlace" runat="server"  CssClass="form-control"></asp:TextBox>        </div> </div>
        <div class="form-group">
             <asp:Label ID="lblCertificate" runat="server" Text="Certificate" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                    ControlToValidate="fuCertificate" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
             <asp:FileUpload ID="fuCertificate" runat="server"  CssClass="form-control" />
            </div>
            </div>  
            <hr />  
        <div class="form-group">
              <div class="col-lg-5 col-lg-offset-3">
 
         <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn2_Click" />
              
     
      </div>
            </div>
            <hr />
        <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
       
                <br />
                <asp:SqlDataSource ID="SqlDsTraining" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" InsertCommand="INSERT INTO [Office] ([TrainingName], [Trainee], [TrainDuration], [TrainCertificateNo], [TrainDate], [Trainhead], [TrainPlace], [TrainCertificate]) VALUES (@TrainingName, @Trainee, @TrainDuration, @TrainCertificateNo, @TrainDate, @Trainhead, @TrainPlace, @TrainCertificate)" SelectCommand="SELECT [SrNo], [TrainingName], [Trainee], [TrainDuration], [TrainCertificateNo], [TrainDate], [Trainhead], [TrainPlace], [TrainCertificate] FROM [Office]" UpdateCommand="UPDATE [Office] SET [TrainingName] = @TrainingName, [Trainee] = @Trainee, [TrainDuration] = @TrainDuration, [TrainCertificateNo] = @TrainCertificateNo, [TrainDate] = @TrainDate, [Trainhead] = @Trainhead, [TrainPlace] = @TrainPlace, [TrainCertificate] = @TrainCertificate WHERE [SrNo] = @SrNo">
                    <DeleteParameters>
                        <asp:Parameter Name="SrNo" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtTrainingName" Name="TrainingName" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtTrainee" Name="Trainee" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtDuration" Name="TrainDuration" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtCertiNo" Name="TrainCertificateNo" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="TrainDate" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtTrainingHead" Name="Trainhead" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtPlace" Name="TrainPlace" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="fuCertificate" Name="TrainCertificate" PropertyName="FileName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TrainingName" Type="String" />
                        <asp:Parameter Name="Trainee" Type="String" />
                        <asp:Parameter Name="TrainDuration" Type="String" />
                        <asp:Parameter Name="TrainCertificateNo" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="TrainDate" />
                        <asp:Parameter Name="Trainhead" Type="String" />
                        <asp:Parameter Name="TrainPlace" Type="String" />
                        <asp:Parameter Name="TrainCertificate" Type="String" />
                        <asp:Parameter Name="SrNo" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
       
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
       
                </div> </div> 
            
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Schooldashboard.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" 
             NavigateUrl="~/Schooldashboard.aspx">Home</asp:HyperLink></center>
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


