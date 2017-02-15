<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>User Details</title>
	<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<form id="form1" runat="server">
	<div id="header">
	</div>
    <div id="contents">
       <div id="adbox">
         <div class="details">
             <br/>
    <br/>
    
    		
                             <h3>If you are finished </h3>
					
                             <a href="Admin.aspx">Let's go back to your home page</a>   
    <br/>
    <br/>
    <br/>
    <br/>
			

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [UserData] WHERE [ID] = @ID" InsertCommand="INSERT INTO [UserData] ([ID], [Username], [Email], [Country], [Img]) VALUES (@ID, @Username, @Email, @Country, @Img)" SelectCommand="SELECT [ID], [Username], [Email], [Country], [Img] FROM [UserData]" UpdateCommand="UPDATE [UserData] SET [Username] = @Username, [Email] = @Email, [Country] = @Country, [Img] = @Img WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Img" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Img" Type="String" />
                <asp:Parameter Name="ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <br/>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            
            <Columns>
                <asp:TemplateField HeaderText="UserName">
                <ItemTemplate>
                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                 </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                         <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' /> 
                 </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Country">
                <ItemTemplate>
                          <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                 </ItemTemplate>
                </asp:TemplateField>

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
				<input type="text" value="Enter email address and get 10% off" class="txtfield" onMouseUp="return false;" onFocus="this.select();">
				<input type="submit" value="SIGNUP" class="btn">
			<p>
			    Super shop <a href="Default.apsx">Privacy Policy</a> <a href="Default.apsx">Terms and Conditions</a>
			</p>
		</div>
	</div>
    </form>
</body>
</html>
