<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="addCategory.aspx.cs" Inherits="online_Learning_project.Admin.addCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="dashboard.css" rel="stylesheet" />
    <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet" />
        
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
        .auto-style2 {
            height: 271px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          </button>
            <br />
        </div>
      </div>

      
        <div>
      <h2>Manage Course Category</h2>
           
            
            <form id="form1"  runat="server" class="auto-style2">
             <div class="align-content-xl-between" style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
               
                <asp:TextBox ID="TextCategory" runat="server" CssClass="form-control" placeholder="Enter Category">

                </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="True" ControlToValidate="TextCategory" Text="*"></asp:RequiredFieldValidator>
         

                       <asp:TextBox ID="TextDescription" runat="server" placeholder="Description" CssClass="form-control" TextMode="MultiLine" MaxLength="200"></asp:TextBox>
               
                <asp:Button ID="add" runat="server"  cssClass="btn-light" Text="Add Category" OnClick="add_Click" />
                <asp:Button ID="update" runat="server" CssClass="btn-danger" Text="Update" OnClick="update_Click" />
                <asp:Label ID="LblCategory" runat="server"></asp:Label>
                <br />
                 <asp:HiddenField ID="HiddenField1" runat="server" />
                <br />
                </div>
            
                <div class="justify-content-center"  style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="940px" CssClass="table table-responsive table-hover" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Categoryd" HeaderText="Category ID" />
                        <asp:BoundField DataField="CatName" HeaderText="Category Name" />
                        <asp:ButtonField CommandName="Ed" Text="Edit" />
                        <asp:ButtonField CommandName="del" Text="Delete" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                   </div>
           
          </form>
           </div>
                
      
    </main>




    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>
      
        <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
        <script src="dashboard.js"></script>
 
</asp:Content>
