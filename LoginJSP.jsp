<%-- 
    Document   : Page4
    Created on : 02-Apr-2021, 05:07:00
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
            *{
                margin: 0px;
            }
            header{
                background-color: #0860a8;
                height:  50px;
                color: white;
                text-align: center; 
                padding: 50px;
            }
            .nav-bar{
                overflow: hidden;
                background-color:  #333;
                font-size: 20px;
            }
            .nav-bar a.right{
                display: block;
                float: right;
                padding: 15px 20px;
                color: white;
                text-decoration: none;
            }
            .nav-bar a:hover{
                background-color: white;
                color: black;
            }
            section{
                background-color: whitesmoke;
                height:  700px;
            }
            .login {
               margin-top: 6px;
                padding: 20px;
                font-size: 20px;
                text-align: center;
                height: 500px;
            }
            footer{
                padding: 20px;
                background-color: #0860a8;
                height:  50px;
                color: white;
            }
            
            
        </style>
    </head>
    <body>
        <header>
            <h1>Website</h1>
            
        </header>
        
        <div class="nav-bar">
           
             <a href="Contact.jsp" class="right">Contact</a>
            <a href="About.jsp" class="right">About</a>
            <a href="SignUp.jsp" class="right">Sign Up</a>
            <a href="Index.jsp" class="right">Home</a>
            
            
        </div>
        
        <section>
            <div class="login" >
                <form action="LoginServlet" method="post">
                    <label for="id" >Staff Id</label><br>
                    <input type="text" name="Id" placeholder="Enter ID" style="height:30px;width:200px" required="" /><br><br>
                    <label for="password" >Password</label><br>
                    <input type="password" name="password" placeholder="Enter Password" style="height:30px;width:200px" required="" /><br><br>
                    <input type="submit" value="Login" style="height:30px;width:100px"/>
            </form>
                <p> <%
               
                    if(request.getParameter("q")!=null){
                        out.print(request.getParameter("q"));
                    }
               
                    %>
                </p>
            </div>
        </section>
        
        <footer>
             
             <h5>&copy;Designed by Yogita</h5>
        </footer>
        
    </body>
</html>
