<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.jdo.PersistenceManager" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="comments.Comments" %>
<%@ page import="comments.PMF" %>
<%@ page import="comments.JsoupTest" %>

<html>
    <head>
        <title>VideoGame Analysis Hub</title>
        <link href='http://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=VT323' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Gruppo' rel='stylesheet' type='text/css'>
        <link type="text/css" rel="stylesheet" href="/stylesheets/main.css" />
        <link type="text/css" rel="stylesheet" href="/stylesheets/slider.css" />
        <title>V.G.A.H</title>
    </head>

    <body>
        <%
            // This is a scriptlet.  Notice that the "date"
            // variable we declare here is available in the
            // embedded expression later on.
            System.out.println("Evaluating date now");
            java.util.Date date = new java.util.Date();
        %>
        <header>

            <h1 id ="banner"><marquee behavior="scroll" direction="left" class="white">Welcome to V.G.A.H! get all of the latest game reviews</marquee></h1>
            <ul id ="headerblocks-ul">
                <li class="hb-children"><span data-hover="j">a</span></li>
                <li class="hb-children"><span data-hover="u">b</span></li>
                <li class="hb-children"><span data-hover="m">c</span></li>
                <li class="hb-children"><span data-hover="b">d</span></li>
                <li class="hb-children"><span data-hover="a">e</span></li>
                <li class="hb-children"><span data-hover="l">f</span></li>
                <li class="hb-children"><span data-hover="a">g</span></li>
                <li class="hb-children"><span data-hover="y">h</span></li>
                <li class="hb-children"><span data-hover="a">i</span></li>
                <li class="hb-children"><span data-hover="a">j</span></li>
            </ul>

            <h1 class="white">Slider</h1>
            <div id="slider">
                <a href="#" class="control_next">></a>
                <a href="#" class="control_prev"><</a>
                <ul>
                    <li>SLIDE 1</li>
                    <li style="background: #aaa;">SLIDE 2</li>
                    <li>SLIDE 3</li>
                    <li style="background: #aaa;">SLIDE 4</li>
                </ul>  
            </div>

            <div class="slider_option">
                <input type="checkbox" id="checkbox">
                <label for="checkbox">Autoplay Slider</label>
            </div> 
        </header>   

        <nav>
            <a href="vgahindex.jsp">Home</a>
            <a href="vjsoup.jsp">Grid</a>
            <a href="">Link3</a>
            <a href="">Link4</a>
        </nav>
<!--end of navigation header-->
        <h1>About V.G.A.H</h1>
        <p> 
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum 
            tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas 
            semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien 
            ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean 
            fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. 
            Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor 
        </p>
        <section>
            <article>
                <h1>Top 10 Game Review Websites</h1>
                <h1><%= date%></h1>
                <div id ="container"></div>
            </article>
        </section>

        <aside>
            <section>
                <h1>Links</h1>
                <ul>
                    <li><a href="#">Link 1</a></li>
                    <li><a href="#">Link 2</a></li>
                    <li><a href="#">Link 3</a></li>
                </ul>
            </section>
            <figure>
                <img id="xbox"
                     src="http://icons.iconarchive.com/icons/visualpharm/icons8-metro-style/128/Video-Game-Consoles-Xbox-icon.png" 
                     alt="Xbox png" />
                <figcaption>Xbox One Logo</figcaption>
            </figure>
        </aside>

        <footer>
            <%
                UserService userService = UserServiceFactory.getUserService();
                User user = userService.getCurrentUser();
                if (user != null) {
            %>
            <p>Hello, <%= user.getNickname()%>! (You can
                <a href="<%= userService.createLogoutURL(request.getRequestURI())%>">sign out</a>.)</p>
                <%
                } else {
                %>
            <p>Hi! please
                <a href="<%= userService.createLoginURL(request.getRequestURI())%>">Sign in</a>
                to include your username with your comments.</p>
                <%
                    }
                %>

            <%
                PersistenceManager pm = PMF.get().getPersistenceManager();
                String query = "select from " + Comments.class.getName() + " order by date desc range 0,5";
                List<Comments> comments = (List<Comments>) pm.newQuery(query).execute();
                if (comments.isEmpty()) {
            %>
            <p>There are no messages.</p>
            <%    } else {
                for (Comments g : comments) {
                    if (g.getAuthor() == null) {
            %>
            <p class = "commentor">ANONYMOUS wrote:</p>
            <%    } else {
            %>
            <p><b><%= g.getAuthor().getNickname()%></b> wrote:</p>
            <%
                }
            %>
            <blockquote><%= g.getContent()%></blockquote>
            <%
                    }
                }
                pm.close();
            %>

            <form action="/sign" method="post">
                <div><textarea name="content" rows="3" cols="60" placeholder="Whats up..."></textarea></div>
                <div><input type="submit" value="Post Greeting" /></div>
            </form>
        </footer>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $.ajax({
                    type: 'GET',
                    url: 'kimonoData.json',
                    dataType: 'json',
                    success: jsonParser
                });
            });

            function jsonParser(json) {
                $('#load').fadeOut();
                $.getJSON('kimonoData.json', function(data) {
                    $.each(data.paintings.painting, function(k, v) {
                        var title = v.title;
                        var img = v.image;
                        var price = v.price;
                        $('#container').append('<div class="painting"><img src="images/' + img + '" width = "200" height="225" alt="' + title + '" /><br/><div class="title">' + title + '<br/>$' + price + '</div></div>');
                    });
                });
            }
        </script>
        <script type="text/javascript" src="javascript/test.js"></script>
    </body>
</html>
