
<%@ Page Title="" Language="C#" MasterPageFile="~/masterStudent.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="online_Learning_project.courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="favicon" href="assets/images/favicon.png">
    <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <!-- Custom styles for our template -->

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="assets/css/style.css">
     <style type="text/css">
         .auto-style1 {
             width: 97%;
         }
         .auto-style2 {
             width: 186px;
         }
     </style>
    <script>
        $('#myModal').on('shown.bs.modal', function () {
            $('#myInput').trigger('focus')
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

		<header id="head" class="secondary" style="background-color:blueviolet;">
            <div class="container">
                    <h1>Courses</h1>
               
                </div>
    </header>

  
                    
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CssClass="auto-style3" RepeatLayout="Flow">
           
            <ItemTemplate>
                <div class="card col-md-4" style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
    
                    <div class="card-header">
                           <table class="auto-style1">
                    <tr>
                        <td valign="middle">
                            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("courseName") %>'></asp:LinkButton>
                            <asp:HiddenField ID="hdfcourseId" runat="server" Value='<%# Eval("courseId") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picPath") %>' Width="371px" Height="156px" />
                        </td>
                    </tr>
                </table>
                      </div>
                    <div class="card-body">
   
                    <table>
               
                <table>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Category ID "></asp:Label>
                            <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("Categoryd") %>'></asp:LinkButton>

                        </td>
                        <td>
                             <asp:Label ID="Label2" runat="server" Text="Category Name "></asp:Label>
                            <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# Eval("CatName") %>'></asp:LinkButton>

                        </td>
                    </tr>
                    </table>
                <table>
                    <tr>
                        <td>
                               <asp:LinkButton ID="LinkButton4" runat="server" Text="Subscibe" type="button" OnClick="LinkButton4_Click"></asp:LinkButton>
    
           </div>
                        </td>
                    </tr>
                </table>
                        </table>
                                 </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    
    <script src="Scripts/bootstrap.js"></script>
</asp:Content>
