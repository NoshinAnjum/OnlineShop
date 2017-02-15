<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductInsert.aspx.cs" Inherits="ProductInsert" %>


<!DOCTYPE html>

<html>
<head runat="server">
	<meta charset="UTF-8">
	<title>User Accounts</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script><!-- jQuery Library-->

	<link rel="stylesheet" href="style.css" type="text/css">    
</head>
<body>

	<div id="header">
		<div>
			
			<ul id="navigation">
				<li>
					 

	       </li>
				
               <li>
					
                   

	       </li>
				
               <li>
					
                 
				
               </li>

               <li>

	         
				
               </li>
              <li>

	             <a href="Admin.aspx">Admin</a>
               </li>
			</ul>
		</div>
	</div>
    <div id="contents">
         
        <div id ="contact">
           <br/>
           <br/>
           <br/>
           <br/>
           <br/>
           <br/>

           <form id="form1" runat="server">
             
                     
        <table>
            <tr>
             <td><label>Product Name:</label></td>
                <td class ="txtfield">
                    <asp:TextBox ID="TextBoxPN" runat="server" Width="180px"></asp:TextBox>
                   
                </td>
                
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxPN" ErrorMessage="Product name is required" ForeColor="#FF3300" Width="180px"></asp:RequiredFieldValidator>
                </td>
            </tr>  
            <tr>
                <td><label>Price(tk):</label></td>
                <td class ="txtfield">
                    <asp:TextBox ID="TextBoxPrice" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPrice" ErrorMessage="Price is required" ForeColor="#FF3300" Width="180px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><label>Quantity:</label></td>
                <td class="txtfield">
                     <asp:TextBox ID="TextBoxQuantity" runat="server" Width="180px"></asp:TextBox>
                    
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxQuantity" ErrorMessage="Quantity is required" ForeColor="#FF3300" Width="180px"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td><label>Details:</label></td>
                <td class ="txtfield">
                    <asp:TextBox ID="TextBoxDetails" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="TextBoxDetails" ErrorMessage="Give some details" ForeColor="#FF3300" Width="180px"></asp:RequiredFieldValidator>
                   
                </td>

            </tr>
            <tr> 
                  <td><label>Product Image</label></td>
                   <td> 
                       <asp:FileUpload ID="FileUpload1" Text="Upload image" runat="server" Width="180px" /></td>
             </tr>
              <tr> 
                   <td>&nbsp;</td> 
                   <td> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="81px" />
                   <input id="Reset1" type="reset" value="reset" /></td> <td>&nbsp;</td>

               </tr>

          </table> 

         </form> 

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
										<span>Posted Jan. 1, 2015</span> <a href="Blog.aspx">Choosing The Latest Collection</a><br/>
									</p>
								</li>
								<li>
									<p>
										<span>Posted Jan. 1, 2015</span> <a href="Blog.aspx">Choosing The Groceries With Perfect Quality</a><br/>
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
			  Super shop <a href="Default.aspx">Privacy Policy</a> <a href="Default.aspx">Terms and Conditions</a>
			</p>
		</div>
	</div>
</body>
</html>
