<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="UploadVideo.aspx.cs" Inherits="online_Learning_project.Admin.UploadVideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style2 {
            margin-left: 40px;
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
        </div>
      </div>
          <div style="background-color:lightsteelblue; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
      <h2>Manage Course Material </h2>
           
             <div class="align-content-xl-between" style="background-color:lightsteelblue; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
               
            <form id="form1"  runat="server">
            
                <asp:TextBox ID="TextCategory" runat="server" placeholder="Category ID" CssClass="form-control"></asp:TextBox>
                <asp:TextBox ID="CourseName" runat="server" placeholder="Course Name" CssClass="form-control"></asp:TextBox>
                <asp:TextBox ID="TextTopic" runat="server" placeholder="Topic" CssClass="form-control"></asp:TextBox>
               
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <div class="auto-style2">
                    <asp:Button ID="Btnvideo" runat="server" Text="Save" OnClick="BtnCourse_Click" CssClass="btn-primary" Width="129px" />
                    <asp:Button ID="BtnUpdate" runat="server" CssClass="btn-dark" Enabled="False" Text="Update" Width="99px"  />
                </div>
                <asp:Label ID="LblCourse" runat="server"></asp:Label>
         
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="videoId" HeaderText="videoID" />
                        <asp:BoundField DataField="courseName" HeaderText="Course Name" />
                        <asp:BoundField DataField="videoTopic" HeaderText="video Topic" />
                        <asp:TemplateField HeaderText="video">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("videoPath") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("videoPath") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField CommandName="Del" Text="Delete" />
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
         
                <br />
          
         
                <br />
             
           
         
                </div>
                
      </div>
         

           </form>
    </main>




   
      
   
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>
      
        <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
        <script src="dashboard.js"></script> 

</asp:Content>
