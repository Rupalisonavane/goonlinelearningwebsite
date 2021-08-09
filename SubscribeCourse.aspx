<%@ Page Title="" Language="C#" MasterPageFile="~/masterStudent.Master" AutoEventWireup="true" CodeBehind="SubscribeCourse.aspx.cs" Inherits="online_Learning_project.SubscribeCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #003399;
        }
        .auto-style2 {
            height: 20px;
            text-align: left;
        }
        .auto-style3 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style4 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-weight: bold;
            font-size: large;
        }
        .auto-style5 {
            width: auto;
        }
        .auto-style6 {
            height: 20px;
            width: auto;
        }
        .auto-style7 {
            width: 993px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:lightsteelblue; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" class="auto-style7">
    <table class="nav-justified" align="center">
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style4" ForeColor="White" Text="Suscribe Course"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Category ID"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox ID="TextCatID" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Course Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextCourseName" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="text-left">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Submit" />
                <asp:Label ID="LblMs" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
