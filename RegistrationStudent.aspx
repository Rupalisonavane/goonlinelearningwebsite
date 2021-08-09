<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationStudent.aspx.cs" Inherits="online_Learning_project.RegistrationStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
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
        .auto-style1 {
            height: 26px;
            text-align: justify;
            color: #FFFFFF;
            font-family: "Segoe UI";
            background-color: #3399FF;
        }
        .auto-style3 {
            width: 171px;
            text-align: justify;
        }
        .auto-style6 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
        .auto-style7 {
            width: 876px;
            height: 350px;
            position: absolute;
            top: 40px;
            left: 0px;
            z-index: 1;
        }
        .auto-style9 {
            width: 372px;
            position: absolute;
            left: 497px;
            top: -2px;
            height: 373px;
            z-index: 1;
            margin-right: 181px;
        }
        .auto-style16 {
            text-align: justify;
            width: 230px;
        }
        .auto-style18 {
            background-color: #3399FF;
        }
        .auto-style19 {
            font-weight: normal;
        }
        .auto-style20 {
            font-size: large;
        }
        .auto-style21 {
            height: 59px;
            width: 171px;
        }
        .auto-style22 {
            width: 171px;
        }
        .auto-style23 {
            display: block;
            width: 100%;
            height: calc(1.5em + .75rem + 2px);
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            margin-top: 0;
            background-color: #fff;
        }
        </style>
  
</head>
<body>
    <form id="form1" runat="server" class="auto-style7">
        <div class="justify-content-center" style="border-radius : 25px;">
            <h2 class="align-content-lg-center">Register New User</h2>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                     <table class="auto-style9 align-content-center  "  style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
               
                <tr>
                     <td class="text-left" colspan="2">
                        <asp:TextBox ID="TextFullName" placeholder="Full Name"   CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="TextFullName" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                    </tr>
                         <tr>
                        <td class="auto-style22">
                        <asp:TextBox ID="TextUsername" placeholder="USername(Email)" CssClass="auto-style6" runat="server" TextMode="Email" Width="347px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="TextUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextUsername" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>

                    </tr>
                       <tr>
                           <td class="auto-style22">  
                    <asp:TextBox ID="TextPass" placeholder="Password" CssClass="auto-style6" runat="server" TextMode="Password" Width="347px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="TextPass" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       </td>

                    </tr>  
            <tr>
                                  <td class="auto-style22">
                 <asp:TextBox ID="TextCfmPass" Placeholder="Confirm Password" CssClass="auto-style6" runat="server" TextMode="Password" Width="347px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="TextCfmPass" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPass" ControlToValidate="TextCfmPass" Display="Dynamic" ErrorMessage="Password and confirm password mst be same" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                                   </td>

                               </tr>
                         <tr>
                             <td class="auto-style22">
                                 <asp:TextBox ID="TextContact" placeholder="Contact number" CssClass="form-control" runat="server" TextMode="Phone" Width="347px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="TextContact" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                             </td>

                    </tr>
                    <tr>
                            <td class="auto-style21">
                 
                                         <asp:TextBox ID="TextAddress" placeholder="Permanent Address" CssClass="form-control" runat="server" TextMode="MultiLine" Width="347px"></asp:TextBox>
                        </td>
                                </tr>
                            
                                <tr>
                            <td class="auto-style22">
                                <asp:TextBox ID="TextclgName" placeholder="College Name" CssClass="auto-style23" runat="server" Width="347px"></asp:TextBox>
                       </td>
                                </tr>
                            
                              <tr ><td class="auto-style22">    <asp:DropDownList ID="DropDownEdu" cssClass="auto-style6" runat="server" Width="347px">
                            <asp:ListItem>Select your Degree</asp:ListItem>
                            <asp:ListItem>Bsc</asp:ListItem>
                            <asp:ListItem>B.C.A</asp:ListItem>
                            <asp:ListItem>B.C.S</asp:ListItem>
                            <asp:ListItem>B.E</asp:ListItem>
                         
                            <asp:ListItem>B.Com</asp:ListItem>
                            <asp:ListItem>M.E</asp:ListItem>
                            <asp:ListItem>M.Com</asp:ListItem>
                            <asp:ListItem>MSc</asp:ListItem>
                            <asp:ListItem>M.C.A</asp:ListItem>
                            <asp:ListItem>M.C.S</asp:ListItem>
                        </asp:DropDownList></td></tr>
                       <tr>
                           <td class="auto-style22">
                               <asp:DropDownList ID="DropDownSecQue" cssClass="auto-style6" runat="server" Width="347px">
                            <asp:ListItem>Select any Question</asp:ListItem>
                            <asp:ListItem Value=" PetName">What is your Pet Name?</asp:ListItem>
                            <asp:ListItem Value="frdname">what is your Best Friend name?</asp:ListItem>
                            <asp:ListItem Value="schoolName">What is your school name?</asp:ListItem>
                            <asp:ListItem Value="MotherName">What is your Mother name?</asp:ListItem>
                        </asp:DropDownList>

                           </td>

                       </tr>
                       <tr>
                           <td class="auto-style22"> 
                               <asp:TextBox ID="TextsecAns"  placeholder="Security Answer" CssClass="form-control" runat="server" Width="347px"></asp:TextBox>
                           </td>

                       </tr>
                </tr>
                  <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn-secondary focus" OnClick="Button1_Click" />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3399FF" NavigateUrl="~/signin.aspx">Already have an Account ?Log In</asp:HyperLink>
                      </td>
                    <td class="auto-style16">
                        <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn btn-danger" style="margin-left: 0" />
                        <asp:Label ID="LblMsg" runat="server"></asp:Label>
                      </td>
                </tr>
            </table>
                </asp:View>


                <asp:View ID="View2" runat="server">
                    <div>
                        <h4 class="h4">
                            Your Account is created SuccessFully!!!
                      
                     <a href="signin.aspx">   Click Here</a> To Login Again...</h4>

                    </div>
                </asp:View>
            </asp:MultiView>


           
            
        </div>
    </form>
</body>
</html>

