<%@ Page Title="" Language="C#" MasterPageFile="~/masterStudent.Master" AutoEventWireup="true" CodeBehind="myProfile.aspx.cs" Inherits="online_Learning_project.myProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 42px;
            width: 171px;
        }
        .auto-style2 {
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #428BCA;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 class="h2 text-center">My Profile</h2>
        <p class="h2 text-center">
          <asp:Image ID="Image1" runat="server" Height="145px" ImageUrl="~/images/logo.png" Width="147px" CssClass="img-circle" />
            &nbsp;</p>
        &nbsp;
        <br />
       
        <table class="nav-justified ">
            <tr>
                <td class="auto-style1">Select image</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            </table>
        <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn-primary" OnClick="Button1_Click" />
        <asp:Label ID="LblMsg" runat="server"></asp:Label>
        <br />
     
        <br />
        </div>
</asp:Content>
