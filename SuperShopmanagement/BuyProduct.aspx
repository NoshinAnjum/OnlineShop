<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BuyProduct.aspx.cs" Inherits="BuyProduct" %>

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
					
                   

	       </li>
				
               <li>
					
                  
				  
               </li>

               <li>

                   <a href="User.aspx">My Account</a>
	             
				
               </li>
               <li>
                   <a href="Product.aspx">Product</a>
	          
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
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 
           
           &nbsp;&nbsp;
           <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
           <br />
           <br />
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 
           
           <br />
           <br />
           <br />
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
               <AlternatingRowStyle BackColor="PaleGoldenrod" />
               <Columns>
                   <asp:CommandField EditText="Buy" ShowEditButton="True" UpdateText="Confirm" />
                   <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                   <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                   <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                   <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                   <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                   <asp:BoundField DataField="Img" Visible="false" HeaderText="Img" SortExpression="Img" />
                   <asp:TemplateField HeaderText="UserImage">
                <ItemTemplate>
                          <asp:Image ID="ImgLabel" runat="server" ImageUrl='<%# Eval("Img") %>' Width="100px" Height="100px"/>
                 </ItemTemplate>
                </asp:TemplateField>
               </Columns>
               <FooterStyle BackColor="Tan" />
               <HeaderStyle BackColor="Tan" Font-Bold="True" />
               <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
               <SortedAscendingCellStyle BackColor="#FAFAE7" />
               <SortedAscendingHeaderStyle BackColor="#DAC09E" />
               <SortedDescendingCellStyle BackColor="#E1DB9C" />
               <SortedDescendingHeaderStyle BackColor="#C2A47B" />
           </asp:GridView>
           <br />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
               ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
              
               DeleteCommand="DELETE FROM [ProductInfo] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProductInfo] ([ID], [ProductName], [Price], [Quantity], [Details], [Img]) VALUES (@ID, @ProductName, @Price, @Quantity, @Details, @Img)" SelectCommand="SELECT * FROM [ProductInfo]" UpdateCommand="UPDATE [ProductInfo] SET [Quantity] =[Quantity]-1 WHERE [ID] = @ID">
               <DeleteParameters>
                   <asp:Parameter Name="ID" Type="String" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="ID" Type="String" />
                   <asp:Parameter Name="ProductName" Type="String" />
                   <asp:Parameter Name="Price" Type="Double" />
                   <asp:Parameter Name="Quantity" Type="Int32" />
                   <asp:Parameter Name="Details" Type="String" />
                   <asp:Parameter Name="Img" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="ProductName" Type="String" />
                   <asp:Parameter Name="Price" Type="Double" />
                   <asp:Parameter Name="Quantity" Type="Int32" />
                   <asp:Parameter Name="Details" Type="String" />
                   <asp:Parameter Name="Img" Type="String" />
                   <asp:Parameter Name="ID" Type="String" />
               </UpdateParameters>
           </asp:SqlDataSource>
           
				
      

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
