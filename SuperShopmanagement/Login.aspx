<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>


<html>

  <head>
	
    <meta charset="UTF-8">

       <title>Super shop management</title>

 	  <link rel="stylesheet" href="style.css" type="text/css">
  
      </head>
  
<body>
	<form id="form1" runat="server">
	<div id="header">
		
            <div>	
               <ul id="navigation">

               <li class="selected">
	
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
           <div id="contact">
				     <br/>
                     <br/>
                     <br/>
                     <br/>
                     <br/>
           <table>
            <tr>
                <td><label>Name:</label></td>
                <td class ="txtfield">
                    <asp:TextBox ID="TextBoxUsername" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="User Name is required" ForeColor="Red" Width="180px"></asp:RequiredFieldValidator>

                </td>
            </tr>
            
     
            <tr>
                <td><label>Password:</label></td>
                <td class ="txtfield">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Password is required" ForeColor="Red" Width="180px"></asp:RequiredFieldValidator>

                </td>
            </tr>
           

            <tr>
                <td>&nbsp;</td>
                <td>

                    
                    
               <asp:CheckBox ID="remember" runat="server" Text="Remember me" OnCheckedChanged="remember_CheckedChanged"/>
                             
                <td><a href="Registration.aspx">New user register here</a></td>
            </tr>
            <tr>
                <td>&nbsp</td>
                <td><asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="login" Width="81px" /></td>
                   
                <td>
                    &nbsp;</td>
            </tr>
           
         </table>
               
              
               <br/>
               <br/>
               <br/>
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
										
                                           <td>Muradpur,Chittagong</td>
									
                                        </tr>
                                        <tr>

					   <td>Phone:</td>
										
                                           <td>540-754-4081</td>
									
                                        </tr>
                                        <tr>
										
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
				<input type="text" value="Enter email address and get 10% off" class="txtfield" onMouseUp="return false;" onFocus="this.select();">
				<input type="submit" value="SIGNUP" class="btn">
			<p>
                Super shop <a href="Default.aspx">Privacy Policy</a> <a href="Default.aspx">Terms and Conditions</a>
			</p>
		</div>
	</div>
    </form>
    </body>

</html>
