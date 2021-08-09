z<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="online_Learning_project.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="Admin/assets/dist/css/bootstrap.min.css" rel="stylesheet" />

    <link href="Admin/signin.css" rel="stylesheet" />
      <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
          .auto-style3 {
              display: block;
              width: 323px;
              height: calc(1.5em + .75rem + 2px);
              font-size: 1rem;
              font-weight: 400;
              line-height: 1.5;
              color: #495057;
              background-clip: padding-box;
              border-radius: .25rem;
              transition: none;
              left: 0px;
              top: -19px;
              border: 1px solid #ced4da;
              background-color: #fff;
          }
          .auto-style4 {
              margin-left: 10px;
          }
          .auto-style6 {
              width: 331px;
              text-align: center;
          }
          .auto-style7 {
              width: 331px;
              text-align: center;
              height: 26px;
          }
          </style>
</head>
<body>
      <form class="form-signin" runat="server" style="position: relative">

  
        
     <table class="justify-content-center"  style="background-color:white; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
      <tr>
       <td class="auto-style7">  &nbsp;</td>
  </tr>
         <tr>
             <td class="auto-style6">
                 <h2 class="h2">Sign IN</h2>
                 <img src="images/logoavatar.png" alt=" " height="72" width="72" class="auto-style4"/>   
             
             </td>
             </tr>
         <tr>
             <td class="auto-style6">
        <asp:TextBox ID="TextUsername" class="form-control" runat="server" placeholder="Email address" ></asp:TextBox>
                 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextUsername" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextUsername" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </td>
             </tr>
    
                 <tr>
             <td class="auto-style6">
         <asp:TextBox ID="TextPassword" cssClass="auto-style3" runat="server"   placeholder="Password"   TextMode="Password" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" SetFocusOnError="True" ControlToValidate="TextPassword" ForeColor="Red"></asp:RequiredFieldValidator>     
                 </td>
             </tr>
         <tr>
             <td class="auto-style6">
                 <asp:Button ID="Button1" runat="server" Text="Submit"  cssClass="btn-primary" OnClick="Button1_Click"/>
                  <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
                 <br />
                 Don't Have an Account?
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationStudent.aspx">Register New User</asp:HyperLink>
                 <br />
                 <asp:HyperLink ID="HyperLink2" runat="server">Forgot Password</asp:HyperLink>
             </td>
         </tr>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>" SelectCommand="SELECT [RoleId] FROM [Role]"></asp:SqlDataSource>
       
 
         </table>
     
        <script src="Admin/assets/dist/js/bootstrap.bundle.min.js"></script>
    
       
    </form>
</body>
</html>
