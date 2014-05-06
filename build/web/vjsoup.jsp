
<%@page import="org.jsoup.nodes.Document" %>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="comments.JsoupTest" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='http://fonts.googleapis.com/css?family=VT323' rel='stylesheet' type='text/css'>
        <link type="text/css" rel="stylesheet" href="/stylesheets/main.css" />
        <link type="text/css" rel="stylesheet" href="/stylesheets/imagegrid.css" />
        <title>V.G.A.H</title>
    </head>
    <body>
            <header>
         

            
        </header>   

        <nav>
            <a href="vgahindex.jsp">Home</a>
            <a href="vjsoup.jsp">Grid</a>
            <a href="">Link3</a>
            <a href="">Link4</a>
        </nav>
        <%
        Document doc;
        Elements links = null;
	//try {
		// need http protocol
		doc = Jsoup.connect("http://www.ign.com/games/reviews?filter=latest").userAgent("Mozilla").get();
 //http://google.com
		// get page title
		String title = "Stuff";//doc.title();
		System.out.println("title : " + title);
 
		// get all links
	        links = doc.select("a[href]");
		for (Element link : links) {
 
			// get the value from href attribute
			System.out.println("\nlink : " + link.attr("href"));
			System.out.println("text : " + link.text());
 
		}
 
	//} catch (IOException e) {
	//	e.printStackTrace();
	//}
        %>
        <div class="wrapper">
	<div class="container">
		<h1>Responsive Image Grids Using CSS</h1>
		<ul class="grid-nav">
			<li><a href="#" data-id="two-columns" class="active">IGN</a></li>
			<li><a href="#" data-id="three-columns">Gameinformer</a></li>
			<li><a href="#" data-id="four-columns">GameSpot</a></li>
		</ul>
		
		<hr />
		<!--/#two-columns-->
		<div id="two-columns" class="grid-container" style="display:block;">
			<ul class="rig columns-2">
				<li>
					<img src="images/pri_001.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_002.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_003.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_004.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
			</ul>
		</div>
		<!--/#two-columns-->
		<!--/#three-columns-->
		<div id="three-columns" class="grid-container">
			<ul class="rig columns-3">
				<li>
					<img src="images/pri_001.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_002.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_003.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_004.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_005.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_006.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_007.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_008.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_009.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
			</ul>
		</div>
		<!--/#three-columns-->
		<!--/#four-columns-->
		<div id="four-columns" class="grid-container">
			<ul class="rig columns-4">
				<li>
					<img src="images/pri_001.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_002.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_003.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_004.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_005.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_006.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_007.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_008.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_009.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_010.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_011.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
				<li>
					<img src="images/pri_012.jpg" />
					<h3>Image Title</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</li>
			</ul>
		</div>
		<!--/#four-columns-->
		
		<hr />
		
		<p class="centered">Lorem ipsum dolor amet</p>
	</div>
	<!--/.container-->
</div>
<!--/.wrapper-->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.grid-nav li a').on('click', function(event){
		event.preventDefault();
		$('.grid-container').fadeOut(500, function(){
			$('#' + gridID).fadeIn(500);
		});
		var gridID = $(this).attr("data-id");
		
		$('.grid-nav li a').removeClass("active");
		$(this).addClass("active");
	});
});
</script>
        <h1>JSP Test Links!</h1>
        <% for(int i =0; i<links.size();i++){ %>
        <p><% out.println(links.get(i).attr("href")); %></p>
        <%}%>
        <p><% out.println(links.attr("href")); %></p> 
        <p><% out.println(links.size()); %></p> 
    </body>
</html>
