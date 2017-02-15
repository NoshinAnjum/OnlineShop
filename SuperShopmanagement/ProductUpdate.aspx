<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductUpdate.aspx.cs" Inherits="ProductUpdate" %>


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

	       </li>

             <li>
					 <a href="Admin.aspx">Admin</a>
               </li>

                	
               <li>     
                    <a href="ProductInsert.aspx">Product Insert</a>
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
    <br/>
    <br/>
        <asp:SqlDataSource ID="SqlDataSourceProduct" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [ProductInfo] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProductInfo] ([ID], [ProductName], [Price], [Quantity], [Details], [Img]) VALUES (@ID, @ProductName, @Price, @Quantity, @Details, @Img)" SelectCommand="SELECT * FROM [ProductInfo]" UpdateCommand="UPDATE [ProductInfo] SET [ProductName] = @ProductName, [Price] = @Price, [Quantity] = @Quantity, [Details] = @Details, [Img] = @Img WHERE [ID] = @ID">
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
    <br/>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ID" DataSourceID="SqlDataSourceProduct" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                <asp:BoundField DataField="Img" HeaderText="Img" SortExpression="Img" />
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