<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Products</title>
	<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
          
	<div id="header">
		<div>
			
			<ul id="navigation">
				<li>
					

	       </li>
				
               <li>
					
                   

	       </li>
				
               <li>
					
                   <a href="User.aspx">My Account</a>
				
               </li>

               <li>

	               <a href="BuyProduct.aspx">Buy</a>
				
               </li>
              
			</ul>
		</div>
	</div>
     <div id="contents">
           <br/>
           <br/>
           <br/>
           <br/> 
              <asp:SqlDataSource ID="SqlDataSource_Doctor" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [ProductInfo]"></asp:SqlDataSource>
                        <asp:ListView ID="ListView_Doctor" runat="server" DataSourceID="SqlDataSource_Doctor" DataKeyNames="ID">
                            <LayoutTemplate>
                                <ul id="itemPlaceholderContainer" runat="server" style="">
                                    <li runat="server" id="itemPlaceholder" />
                                </ul>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                           
                            
                           
                           

                            <ItemTemplate>
                                <li style="">
                                    Product Image:
                                   <br />
                            <br />
                             <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Img") %>' Width="250px" Height="250px"/>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                           
                            <br />
                                    
                                    ID:
                                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                                    <br />
                                    ProductName:
                                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                                    <br />
                                    Price:
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                    <br />
                                    Quantity:
                                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                                    <br />
                                    Details:
                                    <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                                    <br />
                                    <br />
                                    
                            <br />
                            <br />
                           
                            <br />
                                   
                                </li>
                            </ItemTemplate>

                            

                        </asp:ListView>

    <br/>
    <br/>
    <br/>
    <br/>
        
    <br/>
                 
               
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
          
           
				
      

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
										<span>Posted Jan. 1, 2015</span> <a href="Blog.apsx">Choosing The Latest Collection<br/>
									</p>
								</li>
								<li>
									<p>
										<span>Posted Jan. 1, 2015</span> <a href="Blog.apsx">Choosing The Groceries With Perfect Quality<br/>
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
			<form action="index.html" method="post">
				<input type="text" value="Enter email address and get 10% off" class="txtfield" onMouseUp="return false;" onFocus="this.select();">
				<input type="submit" value="SIGNUP" class="btn">
			</form>
			<p>
			    Super shop <a href="Default.apsx">Privacy Policy</a> <a href="Default.apsx">Terms and Conditions</a>
			</p>
		</div>
	</div>
        </form>
</body>
</html>
