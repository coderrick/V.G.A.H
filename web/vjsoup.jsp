
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
        <title>JSP Page</title>
    </head>
    <body>
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
        <h1>Hello World!</h1>
        <% for(int i =0; i<links.size();i++){ %>
        <p><% out.println(links.get(i).attr("href")); %></p>
        <%}%>
        <p><% out.println(links.attr("href")); %></p> 
        <p><% out.println(links.size()); %></p> 
    </body>
</html>
