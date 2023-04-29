<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>result</title>
</head>
<body>
<h1>您选择的信息如下：</h1>
<p>您的用户名是： <%=new String(request.getParameter("username").getBytes("ISO8859_1"),"UTF-8") %></p>
<p>您的密码是： <%= request.getParameter("password") %></p>
<p>您的确认密码是： <%= request.getParameter("confirm_password") %></p>
<p>您的性别是：<%=new String(request.getParameter("sex").getBytes("ISO8859_1"),"UTF-8") %></p>
<p>你的个人爱好：
    <%
        String[] hobby=request.getParameterValues("like");
        for(int i=0;i<hobby.length;i++)
        {
    %>
    <%=new String(hobby[i].getBytes("ISO8859_1"),"UTF-8")%>

    <%} %></p>
<p>您的邮箱是： <%= request.getParameter("email") %></p>
<p>您的学院：<%=new String(request.getParameter("college").getBytes("ISO8859_1"),"UTF-8") %></p>
<p>您的系别：<%=new String(request.getParameter("department").getBytes("ISO8859_1"),"UTF-8") %></p>
<p>您的专业：<%=new String(request.getParameter("major").getBytes("ISO8859_1"),"UTF-8") %></p>
<p>您的个人简介是： <%=new String(request.getParameter("introduction").getBytes("ISO8859_1"),"UTF-8") %></p>

<script src="bg.js"></script>
</body>
</html>