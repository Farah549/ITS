<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css" />
	<link rel="stylesheet" type="text/css" href="css/main.css" />
    
</head>
<body>
  
  <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form runat="server" class="login100-form validate-form">
					<span class="login100-form-title p-b-43">
						Sign up
					</span>

                    	<div class="wrap-input100 validate-input" >
					 <asp:TextBox runat="server" ID="txtB_signup_name"	class="input100" > </asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">User Name</span>
                        
					</div>



					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					 <asp:TextBox runat="server" ID="txtB_signup_email"	class="input100"  name="email"> </asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
                        
					</div>
                    
                    <asp:DropDownList runat="server" ID="ddlCountry" Cssclass="custom-select" width="500px" >
                        <asp:ListItem>Pakistan</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>Oman</asp:ListItem>
                        <asp:ListItem>USE</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>

                    </asp:DropDownList>
                    <br />
                    <br />
                    
                      <asp:DropDownList runat="server" ID="ddlType" Cssclass="custom-select" width="500px" >
                        <asp:ListItem  >Beginner</asp:ListItem>
                        <asp:ListItem  >Expert</asp:ListItem>
                        

                    </asp:DropDownList>
                    <br />
                    <br />

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<asp:TextBox runat="server" ID="txtB_signup_pass" class="input100" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>

				   
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<asp:TextBox runat="server" ID="txtB_signup_cnfrmPass" class="input100" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Confirm password</span>
					</div>
 
					<div class="container-login100-form-btn">
						<asp:Button class="login100-form-btn" OnClick="btn_signUp_Click" runat="server" ID="btn_signup" Text="Sign up"/>
						
					</div>

					<div class="text-center p-t-46 p-b-20">
						<h2><a href="login.aspx">already have account?</a></h2>
					</div>

					<div class="login100-form-social flex-c-m">
						<a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
							<i class="fa fa-facebook-f" aria-hidden="true"></i>
						</a>

						<a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</a>
					</div>
				</form>

				<div class="login100-more" style="background-image: url('images/bg-01.jpg');">
				</div>
			</div>
		</div>
	</div>


    


      

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
    <script src="js/ddllist.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>
