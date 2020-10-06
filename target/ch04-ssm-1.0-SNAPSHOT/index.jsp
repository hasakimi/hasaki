<% String basePath = request.getScheme() + "://" +
    request.getServerName() + ":" + request.getServerPort() +
    request.getContextPath() + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>学生管理</title>
</head>
<body>
    <div align="center">
        <p>学生管理系统</p>
        <img src="images/mm.jpg">
        <table>
            <tr>
                <td><a href="addStudent.jsp">注册学生</a></td>
            </tr>
            <tr>
                <td><a href="queryStudent.jsp">查询学生</a></td>
            </tr>
        </table>
    </div>
</body>
</html>
