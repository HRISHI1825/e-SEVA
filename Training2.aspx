<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Training2.aspx.cs" Inherits="Trainee2" %>

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
        <h1>Trainee Information</h1>
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
            <asp:Label ID="lblTrainingName" runat="server" CssClass="col-lg-3 control-label" Text="Training Name" ></asp:Label>
        <div class="col-lg-5">
        <asp:Label ID="lblTrainingName1" runat="server" CssClass="form-control" Text='<%# Eval("TrainingName") %>'></asp:Label>
        </div>
        </div>
       <div class="form-group">
             <asp:Label ID="lblTrainee" runat="server" Text="Trainee" CssClass="col-lg-3 control-label "></asp:Label> 
        <div class="col-lg-5">
        <asp:Label ID="lblTrainee1" runat="server" CssClass="form-control" Text='<%# Eval("Trainee") %>'></asp:Label>
        </div></div>
        <div class="form-group">
           <asp:Label ID="lblDuration" runat="server" Text="Duration" CssClass="col-lg-3 control-label  "></asp:Label>
            <div class="col-lg-5">
             <asp:Label ID="lblDuration1" runat="server" CssClass="form-control" Text='<%# Eval("TrainDuration") %>'></asp:Label>
             </div></div>
        <div class="form-group">
            <asp:Label ID="lblCertiNo" runat="server" Text="Certificate No" CssClass="col-lg-3 control-label "></asp:Label>
            <div class="col-lg-5">
            <asp:Label ID="lblCertiNo1" runat="server" CssClass="form-control" Text='<%# Eval("TrainCertificateNo") %>'></asp:Label>
            </div></div>
        <div class="form-group">
           <asp:Label ID="lblDate" runat="server" Text="Date" CssClass="col-lg-3 control-label  "></asp:Label>
            <div class="col-lg-5">
            <asp:Label ID="lblDate1" runat="server" CssClass="form-control" Text='<%# Eval("TrainDate") %>'></asp:Label>
            </div></div>
            <div class="form-group">
                 <asp:Label ID="lblTrainingHead" runat="server" Text="Training Head" CssClass="col-lg-3 control-label  "></asp:Label>
                <div class="col-lg-5">
                 <asp:Label ID="lblTrainingHead1" runat="server" CssClass="form-control" Text='<%# Eval("Trainhead") %>'></asp:Label>
                 </div></div>
                 <div class="form-group">
                 <asp:Label ID="lblPlace" runat="server" Text="Place" CssClass="col-lg-3 control-label "></asp:Label>
                 <div class="col-lg-5">
                 <asp:Label ID="lblPlace1" runat="server" CssClass="form-control" Text='<%# Eval("TrainPlace") %>'></asp:Label>
                 </div>
                 </div>
                 <div class="form-group">
                 <asp:Label ID="lblCertificate" runat="server" Text="Certificate" CssClass="col-lg-3 control-label "></asp:Label>
                 <div class="col-lg-5">
                  <a href='TrainingCertificates/<%# Eval("TrainCertificate") %>'>
                      <asp:Label ID="Label1" runat="server" Text="Click to see" CssClass="form-control"></asp:Label></a>
                 </div></div>
        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT [TrainingName], [Trainee], [TrainDuration], [TrainCertificateNo], [TrainDate], [Trainhead], [TrainPlace], [TrainCertificate] FROM [Office] WHERE (([TrainingName] = @TrainingName) AND ([Trainee] = @Trainee))">
            <SelectParameters>
                <asp:QueryStringParameter Name="TrainingName" QueryStringField="TrainingName" 
                    Type="String" />
                <asp:QueryStringParameter Name="Trainee" QueryStringField="Trainee" 
                    Type="String" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Training.aspx">Back</asp:HyperLink></center>
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
