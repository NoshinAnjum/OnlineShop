<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

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
	
	          

	       </li>
				
               <li>
					
                   <a href="Product.aspx">Product</a>

	       </li>
				
               <li>
					
                   <a href="BuyProduct.aspx">Buy</a>
				
               </li>

               <li>

	           <a href="UserAccount.aspx">Update</a>
				
               </li>
               <li>

	           <a href=""></a>
               </li>

               </ul>
		
          </div>
	
        </div>
	
       <div id="contents">
           <br/>
           <br/>
           <br/>
           <br/>
           <br/>
           <br />
           <br />
           <br />
           <br />
          
           
				<div id="contact">
                 
                        <asp:Label ID="Label_Welcome" runat="server" Text="Welcome  "></asp:Label>
                        <asp:DataList ID="DataList1" runat="server" CellPadding="2" 
                        DataSourceID="SqlDataSource1" ForeColor="Black" Height="531px" Width="441px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" DataKeyField="ID">
                        <AlternatingItemStyle BackColor="PaleGoldenrod" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <ItemTemplate>
                            UserImage:
                            <br />
                            <br />
                             <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Img") %>' Width="250px" Height="250px"/>
                            <br />
                            <br />
                           
                            <br />
                            <br />
                             <br />
                            <br />
                            <br />
                             <br />
                            <br />
                            <br />
                           
                            <br />
                            <br />
                             <br />
                            <br />
                            <br />
                             <br />
                           
                            <br />
                            <br />
                            <br />
                           
                            <br />
                             ID:
                             <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                             Username:
                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                            <br />
                             Email:
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            <br />
                             Password:
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                            <br />
                             Country:
                            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                            <br />
                            
                           
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    </asp:DataList>
                        <br />
                    <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click"/>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                        SelectCommand="SELECT * FROM [UserData] WHERE ([Username] = @Username)" DeleteCommand="DELETE FROM [UserData] WHERE [ID] = @ID" InsertCommand="INSERT INTO [UserData] ([ID], [Username], [Email], [Password], [Country], [Img]) VALUES (@ID, @Username, @Email, @Password, @Country, @Img)" UpdateCommand="UPDATE [UserData] SET [Username] = @Username, [Email] = @Email, [Password] = @Password, [Country] = @Country, [Img] = @Img WHERE [ID] = @ID">
                            <DeleteParameters>
                                <asp:Parameter Name="ID" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ID" Type="String" />
                                <asp:Parameter Name="Username" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Password" Type="String" />
                                <asp:Parameter Name="Country" Type="String" />
                                <asp:Parameter Name="Img" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="Username" SessionField="User" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Username" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Password" Type="String" />
                                <asp:Parameter Name="Country" Type="String" />
                                <asp:Parameter Name="Img" Type="String" />
                                <asp:Parameter Name="ID" Type="String" />
                            </UpdateParameters>
                         </asp:SqlDataSource>
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