<%--
  Created by IntelliJ IDEA.
  User: Sebastian
  Date: 18/2/2017
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Project name</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="${pageContext.request.requestURI eq '/' ? ' active' : ''}">
                    <a href="/">Home</a>
                </li>
                <li class="${pageContext.request.requestURI eq '/WEB-INF/views/about.jsp' ? ' active' : ''}">
                    <a href="about.html">About</a>
                </li>
                <li class="${pageContext.request.requestURI eq '/WEB-INF/views/contact.jsp' ? ' active' : ''}">
                    <a href="contact.html">Contact</a>
                </li>
                <li class="${pageContext.request.requestURI eq '/WEB-INF/views/userList.jsp' ? ' active' : ''}">
                    <a href="users.html">Usuarios</a>
                </li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

