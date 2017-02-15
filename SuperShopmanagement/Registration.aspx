<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html>
<head runat="server">
	<meta charset="UTF-8">
	<title>User Accounts</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script><!-- jQuery Library-->

	<link rel="stylesheet" href="style.css" type="text/css">
    <script src="js/passwordscheck.js"></script>
    <script type="text/javascript">
        function validate_email(textControl) {
            with (textControl) {
                apos = value.indexOf("@");
                dotpos = value.lastIndexOf(".");
                if (apos < 1 || dotpos - apos < 2)
                { alert("Not a valid Email Address!"); return false; }
                else { return true; }
            }
        }

    </script>
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
         
        <div id ="contact">
           <br/>
           <br/>
           <br/>
           <br/>
           <br/>
           <br/>

           <form id="form1" runat="server">
              
                  <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
                
               <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               <ContentTemplate>   
        <table>
            <tr>
             <td><label>Name:</label></td>
                
                   
                  
                   <td class ="txtfield">  
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px" AutoPostBack="True" OnTextChanged="TextBoxUN_TextChanged"></asp:TextBox>
                 </td>
                  
                         
                      
               
                
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User name is required" ForeColor="#FF3300" Width="180px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="label_message" runat="server" Text="label_message"></asp:Label>
                </td>
            </tr>
            </table>
                       
             </ContentTemplate>
                   </asp:UpdatePanel>   
           <table>  
            <tr>
                <td><label>Email:</label></td>
                <td class ="txtfield">
                    <asp:TextBox ID="TextBoxEmail" runat="server" onchange="validate_email( this);" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required" ForeColor="#FF3300" Width="180px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><label for="password">Password : </label></td>
                <td class="txtfield">
                     <asp:TextBox ID="password" name="password" TextMode="Password" runat="server" Width="180px"></asp:TextBox>
                    
                    <span id="result"></span>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Password is required" ForeColor="#FF3300" Width="180px"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td><label>Confirm Password:</label></td>
                <td class ="txtfield">
                    <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="TextBoxRPass" ErrorMessage="Repest password is required" ForeColor="#FF3300" Width="180px"></asp:RequiredFieldValidator>
                    <br />
                    <asp<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both password must be same" ControlToCompare="password" ControlToValidate="TextBoxRPass" ForeColor="#FF3300" Width="180px"></asp:CompareValidator>
                      </td>

            </tr>
             <tr>
                  <td><label>Country:</label></td>
                  <td>
                      <asp:TextBox ID="TextBoxCountry" runat="server" Width="180px"></asp:TextBox>   </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter a country name" ControlToValidate="TextBoxCountry" ForeColor="#FF3300" Width="180px"></asp:RequiredFieldValidator>  </td>

                 </tr>
                   <tr> 
                       <td><label>UserImage</label></td> <td> <asp:FileUpload ID="FileUpload1" Text="Upload image" runat="server" Width="180px" /></td>
                   </tr>
               <tr> 
                   <td>&nbsp;</td> 
                   <td> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="81px" />
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