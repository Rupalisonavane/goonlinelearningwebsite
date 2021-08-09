<%@ Page Title="" Language="C#" MasterPageFile="~/masterStudent.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="online_Learning_project.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  


	<div class="col-lg-12">

		<header id="head" class="secondary" style="background-color:blueviolet;">
            <div class="container">
                    <h1>Contact Us</h1>
                    
                </div>
    </header>
	</div>

	<!-- container -->
	<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h3 class="section-title">Enquiry Form</h3>
						<p> student or Parent have any query rearding course please Fill the below form
</p>
						
					
							<div class="form-group">
								<label>FIRST Name</label><asp:TextBox Class="form-control" ID="fname_txt" runat="server" Width="671px"></asp:TextBox>
							<label>MIDDLE Name</label><asp:TextBox Class="form-control" ID="mname_txt" runat="server" Width="671px"></asp:TextBox>
								<label>LAST Name</label><asp:TextBox Class="form-control" ID="lname_txt" runat="server" Width="671px"></asp:TextBox>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Email</label><asp:TextBox ID="email_txt" Cssclass="form-control" runat="server" Width="668px" TextMode="Email"></asp:TextBox>
										
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Phone</label>
                                        <asp:TextBox ID="phone_txt" Cssclass="form-control" runat="server" TextMode="Phone"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label>Subject</label>
                                <asp:TextBox ID="sub_txt" CssClass="form-control" runat="server"></asp:TextBox>	
							</div>
							<div class="form-group">
								<label>Message</label>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="MultiLine" Height="70px" Width="641px"></asp:TextBox>

							</div>
							<button type="submit" class="btn btn-two">Send message</button><p><br/></p>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-6">
								<h3 class="section-title">Office Address</h3>
								<div class="contact-info">
									<h5>Address</h5>
									<p>5th Street, Carl View - United States</p>
									
									<h5>Email</h5>
									<p>info@webthemez.com</p>
									
									<h5>Phone</h5>
									<p>+09 123 1234 123</p>
								</div>
							</div> 
						</div> 						
					</div>
				</div>
			</div>
	<!-- /container -->

	 


	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>

	<!-- Google Maps -->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script src="assets/js/google-map.js"></script>


</asp:Content>
