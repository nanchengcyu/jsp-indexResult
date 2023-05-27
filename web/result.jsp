<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>result</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h3 style="color:teal">使用bootstrap框架 + JS背景：樱花写此页面 </h3>
    <br><br><br>
    <hr style="color: teal">

    <h2 style="color: black">您选择的信息如下：</h2>
    <p class="lead">您的用户名是： <%=new String(request.getParameter("username").getBytes("ISO8859_1"),"UTF-8") %></p>
    <p class="lead">您的密码是： <%= request.getParameter("password") %></p>
    <p class="lead">您的确认密码是： <%= request.getParameter("confirm_password") %></p>
    <p class="lead">您的性别是：<%=new String(request.getParameter("sex").getBytes("ISO8859_1"),"UTF-8") %></p>
    <p class="lead">你的个人爱好：
        <%
            String[] hobby=request.getParameterValues("like");
            for(int i=0;i<hobby.length;i++)
            {
        %>
        <%=new String(hobby[i].getBytes("ISO8859_1"),"UTF-8")%>

        <%} %></p>
    <p class="lead">您的邮箱是： <%= request.getParameter("email") %></p>
    <p class="lead">您的学院：<%=new String(request.getParameter("college").getBytes("ISO8859_1"),"UTF-8") %></p>
    <p class="lead">您的系别：<%=new String(request.getParameter("department").getBytes("ISO8859_1"),"UTF-8") %></p>
    <p class="lead">您的专业：<%=new String(request.getParameter("major").getBytes("ISO8859_1"),"UTF-8") %></p>
    <p class="lead">您的个人简介是： <%=new String(request.getParameter("introduction").getBytes("ISO8859_1"),"UTF-8") %></p>
    <br><br><br>
    <hr style="color: teal">
    <h6 style="color:teal">小tips：此页面使用bootstrap后效果仅为内容居中，并非无效果 哈哈哈~~</h6>
</div>

<script src="bg.js"></script>
</body>
</html>
