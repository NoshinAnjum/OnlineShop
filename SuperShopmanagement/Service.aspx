<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="Service" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>Services</title>
	<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<div id="header">
		<div>
			
			<ul id="navigation">
				<li>
					 <a href="Default.aspx">Home</a>

	       </li>
				
               <li>
					
                   <a href="About.aspx">About</a>

	       </li>
				
               <li>
					
                   <a href="Service.aspx">Services</a>
				
               </li>

               <li>

	           <a href="Blog.aspx">Blog</a>
				
               </li>
               <li>

	           <a href="Login.aspx">Login</a>
               </li>
			</ul>
		</div>
	</div>
    <div id="contents">
		<div id="services">
			<h1>Service</h1>
			<div id="main">
				<ul>
					<li> 
                                              
						<h5>Warranty and Guarantees</h5>
						<p>
                            <br/>
                            <br/>
							The guarantee period since the product is purchased is written on packets.
                            The warranty doesn't cover damage due to improper use, manipulation 
                            or wear caused by normal use of the material. The things like vegetable don't include 
                            warranty or gurantee like this. But it supplies fresh vegetables.
						</p>
					</li>
					<li>
					
                         
						<h5>Return Policy</h5>
						<p>
                            <br/>
                            <br/>
							In the unlikely event that you are not completely satisfied with the product
                            you purchased, simply return it, in original condition within 30 days for a 
                            full refund.Product must be New and Unused.Product must be returned in original packaging.
						</p>
					</li>
					<li>  
						<h5>Terms and Conditions</h5>
						<p>
                            <br/>
                            <br/>
							By ordering any of our products, you agree to be bound by these terms & conditions.
                            The price applicable is that set at the date on which you place your order. 
                            Shipping costs and payment fees are recognized before confirming the purchase.
                            If you are under 18 years old you must have parents' permission to buy from Massive.
						</p>
					</li>
					<li>
						
						<h5>Privacy Policy</h5>
						<p>
                            <br/>
                            <br/>
						  The personal information you provide will be used to ensure deliveries to you,
                          the credit assessment, to provide offers and information on our catalog to you. 
                          The information you provide is only available to Massive and will not be shared 
                          with other third parties. You have the right to inspect the information held 
                          about you. You always have the right to request Massive to delete or correct 
                          the information held about you. 
						</p>
					</li>
				</ul>
			</div>
			<div id="sidebar">
				<h3>Services Offered</h3>
				<ul>
					<li class="selected">
						<a href="Service.apsx">Quality</a>
					</li>
					<li>
						<a href="Service.apsx">Discount</a>
					</li>
					<li>
						<a href="Service.apsx">Coupon</a>
					</li>
					<li>
						<a href="Service.apsx">Low Cost</a>
					</li>
					<li>
						<a href="Service.apsx">Import</a>
					</li>
					<li>
						<a href="Service.apsx">Recent designary collection</a>
					</li>
					<li>
						<a href="Service.apsx">Buy Online</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="articles">
			<div class="header">
				<div class="body">
					<div>
						<div class="section">
							<h3>About us</h3>
							<p>
							    Here goes some topicse about this supershop......
                                <br/>
                                <br/>
                                <br/>
                                <br/>
							</p>
						</div>
						<div class="section">
							<h3>Latest Blog Posts</h3>
							<ul class="blog">
								<li>
									<p>
										<span>Posted Jan. 1, 2015</span> <a href="Blog.aspx">Choosing The Latest Collection<br/>
									</p>
								</li>
								<li>
									<p>
										<span>Posted Jan. 1, 2015</span> <a href="Blog.aspx">Choosing The Groceries With Perfect Quality<br/>
									</p>
								</li>
							</ul>
						</div>
						<div class="section">
							<h3>Contact Information</h3>
							<table class="info">
								<tbody>
									<tr>
										<td>Address:</td>
										<td>GC,Chittagong</td>
									</tr> <tr>
										<td>Phone:</td>
										<td>540-754-4081</td>
									</tr> <tr>
										<td>Hours Open:</td>
										<td>Sunday- Thursday: 10 am- 9pm</td>
									</tr>
								</tbody>
							</table>
							<h3>Follow us</h3>
							<div id="connect">
								<a href="http://freewebsitetemplates.com/go/facebook/" target="_blank" class="facebook"></a> <a href="http://freewebsitetemplates.com/go/twitter/" target="_blank" class="twitter"></a> <a href="http://freewebsitetemplates.com/go/googleplus/" target="_blank" class="googleplus"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<form action="Default.aspx" method="post">
				<input type="text" value="Enter email address and get 10% off" class="txtfield" onMouseUp="return false;" onFocus="this.select();">
				<input type="submit" value="SIGNUP" class="btn">
			</form>
			<p>
				Super shop<a href="Default.aspx">Privacy Policy</a> <a href="Default.aspx">Terms and Conditions</a>
			</p>
		</div>
	</div>
</body>
</html>

