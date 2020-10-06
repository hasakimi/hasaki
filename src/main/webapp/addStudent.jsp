<% String basePath = request.getScheme() + "://" +
        request.getServerName() + ":" + request.getServerPort() +
        request.getContextPath() + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>学生注册</title>
</head>
<body>
    <div align="center">
        <p>学生注册</p>
        <form action="student/addStudent.do">
            <table>
                <tr>
                    <td>姓名：</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td><input type="text" name="age"></td>
                </tr>
                <tr>
                    <td>邮箱：</td>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;</td>
                    <td><input type="submit" value="注册"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
