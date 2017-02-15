<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>

  <head>
	
    <meta charset="UTF-8">

       <title>Super shop management</title>

 	  <link rel="stylesheet" href="style.css" type="text/css">

       <script language="JavaScript1.1"> 
 
 
var slideimages=new Array()
var slidelinks=new Array()
function slideshowimages(){
for (i=0;i<slideshowimages.arguments.length;i++){
slideimages[i]=new Image()
slideimages[i].src=slideshowimages.arguments[i]
}
}
 
function slideshowlinks(){
for (i=0;i<slideshowlinks.arguments.length;i++)
slidelinks[i]=slideshowlinks.arguments[i]
}
 
function gotoshow(){
if (!window.winslide||winslide.closed)
winslide=window.open(slidelinks[whichlink])
else
winslide.location=slidelinks[whichlink]
winslide.focus()
}
 
//-->
</script> 
  
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
					
                   <a id="s1" visible="false" href="About.aspx">About</a>

	       </li>
				
               <li>
					
                   <a id="s2" visible="false" href="Service.aspx">Services</a>
				
               </li>

               <li>

	           <a id="s3" visible="false" href="Blog.aspx">Blog</a>
				
               </li>
               <li>

	           <a href="Login.aspx">Login</a>
               </li>

               </ul>
		
          </div>
	
        </div>
	
       <div id="contents">
		
            <div id="adbox">
			
                 <div>
				     <br/>
                     <br/>
                     <br/>
                     <br/>
                     <br/>
                      <a href="javascript:gotoshow()"><img src="img.jpg" name="slide" border=0 ></a> 
<script> 
<!--

    //configure the paths of the images, plus corresponding target links
    slideshowimages("img.jpg", "img1.jpg", "img2.jpg", "img3.jpg", "img4.jpg", "img5.jpg")
    slideshowlinks("", "", "", "", "")

    //configure the speed of the slideshow, in miliseconds
    var slideshowspeed = 2000

    var whichlink = 0
    var whichimage = 0
    function slideit() {
        if (!document.images)
            return
        document.images.slide.src = slideimages[whichimage].src
        whichlink = whichimage
        if (whichimage < slideimages.length - 1)
            whichimage++
        else
            whichimage = 0
        setTimeout("slideit()", slideshowspeed)
    }
    slideit()

    //-->
</script> 
                      
				
                          <div class="details">
					
                             <h3>WE HAVE BROUGHT A HUGE COLLECTION FOR YOU...</h3>
					
                             <a href="LogInPage.aspx">Let's Have A Tour On Products<br>So log in</a>
				
                          </div>
			
                 </div>
			
                          <span class="footer"></span>
		
            </div>
		
          <div>
			 
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
