<%@ Page Title="" Language="C#" MasterPageFile="~/masterStudent.Master" AutoEventWireup="true" CodeBehind="CourseVideoPlaylist.aspx.cs" Inherits="online_Learning_project.CourseVideoPlaylist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="col-lg-12">
    
  
   

    

  
  
   

    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>" SelectCommand="select videoUpload.courseName, videoUpload.videoTopic,videoUpload.videoPath,Subscription.courseName,Subscription.Username  from videoUpload,Subscription where Username=<% Session['Username'].ToString() %> "></asp:SqlDataSource>
    
     <asp:DataList ID="DataList1" runat="server" Height="16px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="124px">
         <AlternatingItemStyle BackColor="#CCCCCC" />
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <ItemTemplate>
             <div class="col-lg-4">
                 <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("courseName") %>'></asp:LinkButton>
                 <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("videoTopic") %>' ></asp:LinkButton>
             </div>
             <div class="col-lg-8">

                 <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# Eval("videoPath") %>'></asp:LinkButton>

             </div>
         </ItemTemplate>
         <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
     </asp:DataList>
     <br />
     
     
     </div>
</asp:Content>
