<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminSignup.aspx.cs" Inherits="adminSignup" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Sign up</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--==============================================================================================-->
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
<!--===============================================================================================-->
</head>
<body style="background-color: #666666;">

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form runat="server" id="form1" class="login100-form validate-form" style="margin-top:-120px">
					<span class="login100-form-title p-b-43">
					Admin Sign Up
					</span>


					<div class="wrap-input100 validate-input" data-validate = "Valid user is required">
						<asp:TextBox runat="server" cssclass="input100" ID="txtBox_signup_userName" ></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">User Name</span>
                       
					</div>

					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<asp:TextBox runat="server" ID="txtBox_signup_email" cssclass="input100" TextMode="Email" ></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
					</div>


					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<asp:TextBox runat="server" ID="txtBox_signup_password" cssclass="input100" TextMode="Password" ></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is not matched">
						<asp:TextBox runat="server" ID="txtBox_signup_confirmPassword" cssclass="input100" TextMode="Password" ></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Confirm Password</span>
					</div>


					<div class="container-login100-form-btn">
						<asp:Button runat="server" Text="Sign Up" OnClick="btn_signUp_Click" ID="btn_signUp" Cssclass="login100-form-btn" />
					</div>

					<div class="text-center p-t-46 p-b-20">
						<a href="signinAdmin.aspx" class="txt2" >
							<h6>Already have an account?</h6>
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
