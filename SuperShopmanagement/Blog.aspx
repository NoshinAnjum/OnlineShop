<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>Blog</title>
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
		<div id="blog">
			<h1>Blog</h1>
			<div id="main">
				<div class="box">
					<div class="header">
						<div class="body">
							<p class="infos">
								Posted Jan. 1, 2015 by <a href="Blog.aspx" class="author">Admin</a> with <a href="Blog.aspx" class="comments">0 Comments</a>
							</p>
							<h3><a href="Blog.aspx">Choosing The Latest Collection</a></h3>
							<img src="images/smiling.png" alt="Img">
							<p>
                               Paragraph on this collection
								<br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div id="sidebar">
				<h3>Latest Blog Posts</h3>
				<ul class="posts">
					<li>
						<img src="images/thumb-smiling.png" alt="Img"> <span>Posted Jan. 1, 2015</span> <a href="Blog.aspx">Choosing The Groceries With Perfect Quality</a>
					</li>
					<li>
						<img src="images/thumb-beauty.png" alt="Img"> <span>Posted Jan. 1, 2015</span> <a href="Blog.aspx">Imported Foreign Collection</a>
					</li>
					<li>
						<img src="images/thumb-shampoo.png" alt="Img"> <span>Posted Jan. 1, 2015</span> <a href="Blog.aspx">Why You Should Choose This Shop</a>
					</li>
					<li>
						<img src="images/thumb-sideview.png" alt="Img"> <span>Posted Jan. 1, 2015</span> <a href="Blog.aspx">Fresh Food Collection For You</a>
					</li>
				</ul>
				<h3>Blog Categories</h3>
				<ul>
					<li class="selected">
						<a href="Blog.aspx">Food Collection</a>
					</li>
					<li>
						<a href="Service.aspx">Cloth Collection</a>
					</li>
					<li>
						<a href="Service.aspx">And Other Necessaries</a>
					</li>
					<li>
						<a href="Service.aspx">Top Looks for 2015</a>
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
				© 2023 Hair Repair. All Rights Reserved. <a href="Default.aspx">Privacy Policy</a> <a href="Default.aspx">Terms and Conditions</a>
			</p>
		</div>
	</div>
</body>
</html>