<%--
  Created by IntelliJ IDEA.
  User: 26524
  Date: 2022/8/3
  Time: 23:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="WEB-INF/Templates/Header.jsp" %>

<main class="container-fluid">
    <div class="container-sm login-container d-flex flex-row justify-content-center">
        <form action="/authenticate" method="post" class="login flex-fill">
            <fieldset>
                <legend class="py-2">Login</legend>
                <% if (request.getParameterMap().containsKey("errmsg") && request.getParameter("errmsg").equals("1")) { %>
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    An error occurred during authentication!
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                <% } %>
                <div class="form-row form-group">
                    <label for="inputUsername">Username</label>
                    <input type="text" name="username" class="form-control" id="inputUsername" placeholder="Username"
                           required>
                </div>
                <div class="form-row form-group">
                    <label for="inputPassword">Password</label>
                    <input type="password" name="password" class="form-control" id="inputPassword"
                           placeholder="Password"
                           required>
                </div>
                <div class="form-row form-check">
                    <input type="checkbox" class="form-check-input" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">Remember Me</label>
                </div>
                <div class="form-row">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </fieldset>
        </form>
    </div>
</main>

<%@ include file="WEB-INF/Templates/Footer.jsp" %>
