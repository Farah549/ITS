<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="inquries.aspx.cs" Inherits="inquries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet" />
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css' />
<!-- bootstrap-css -->
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

		
    
		<div class="agileits-wrap">
	<h1>Inquiries</h1>
	<div class="content">
		<p>Send us an inquiry using the form below and we will get back to you in no time!</p>
			<div class="examples">
				<select name="country">
					<option value="none" selected="" disabled="">Pakistan</option>
					<option value="Tittle">China</option>
					<option value="Tittle">Oman</option>
					<option value="Tittle">India</option>
					<option value="Tittle">UAE</option>
				</select>
				<div class="w3l-left-grid">
				<asp:RequiredFieldValidator runat="server" ID="RFVFname" ControlToValidate="txtBfirstName" Text="*" ForeColor="red"></asp:RequiredFieldValidator>				
                    <label>First name</label>
                <asp:TextBox runat="server" ID="txtBfirstName" ></asp:TextBox>
			    <asp:RequiredFieldValidator runat="server" ID="RFVLname" ControlToValidate="txtBLname" Text="*" ForeColor="red"></asp:RequiredFieldValidator>				
                    <label>Last name</label>
                <asp:TextBox runat="server" ID="txtBLname" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="RFVemail" ControlToValidate="txtBContact" Text="*" ForeColor="red"></asp:RequiredFieldValidator>				
	                    <label>Email</label>
                <asp:TextBox runat="server" ID="TxtBEmail" TextMode="Email"  ></asp:TextBox>
				<asp:RegularExpressionValidator runat="server" ID="REV" ValidationExpression="" ControlToValidate="TxtBEmail"></asp:RegularExpressionValidator>
                                    </div>
				<div class="w3l-left-grid w3-ls">
			    <asp:RequiredFieldValidator runat="server" ID="RFVContact" ControlToValidate="txtBContact" Text="*" ForeColor="red"></asp:RequiredFieldValidator>
                    					<label>Contact number</label>
               <asp:TextBox runat="server" ID="txtBContact" TextMode="Number" ></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" ID="RFVInQuery" ControlToValidate="txtBInQuery" Text="*" ForeColor="red"></asp:RequiredFieldValidator>
		            <label>Inquiry</label>
                <asp:TextBox runat="server" ID="txtBInQuery" ></asp:TextBox>
			    <asp:RequiredFieldValidator runat="server" ID="RFVCompny" ControlToValidate="txtBCompanyName" Text="*" ForeColor="red"></asp:RequiredFieldValidator>
                    <label>Company name</label>
					<asp:TextBox runat="server" ID="txtBCompanyName" ></asp:TextBox>

					
				</div>
				<div class="clear"> </div>
				<label>How can we help?</label>
			</div>
			<textarea id="message" name="message" placeholder="Your Message" title="Please enter Your Comments"></textarea>
			<div class="w3ls-submit">
				<asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Send message" />
			</div>
		
	</div>
	<div class="wthree-footer">
		<p>© Intelligent Trade System . All Rights Reserved | Design by <a href="#" target="_blank">ITS</a></p>
	</div>
</div> 
		
</asp:Content>

