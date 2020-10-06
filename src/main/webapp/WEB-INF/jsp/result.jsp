<% String basePath = request.getScheme() + "://" +
        request.getServerName() + ":" + request.getServerPort() +
        request.getContextPath() + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body>
    <h3>${msg}</h3>
</body>
</html>
