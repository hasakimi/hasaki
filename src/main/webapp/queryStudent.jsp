<%--
  Created by IntelliJ IDEA.
  User: Wei
  Date: 2020/10/4
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<% String basePath = request.getScheme() + "://" +
        request.getServerName() + ":" + request.getServerPort() +
        request.getContextPath() + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            stuinfo()
            $("#stuButton").click(function () {
                stuinfo()
            })
        })
        function stuinfo() {
            $.ajax({
                url:"student/queryStudent.do",
                type:"post",
                dataType:"json",
                success:function (resp) {
                    /*查询之前清空数据*/
                    $("#stubody").html("");
                    $.each(resp,function (i,n) {
                        $("#stubody").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.name+"</td>")
                            .append("<td>"+n.age+"</td>")
                            .append("<td>"+n.email+"</td>")
                            .append("</tr>")
                    })
                }
            })
        }
    </script>
</head>
<body>
    <div align="center">
        <table>
            <tr>
                <td>编号</td>
                <td>姓名</td>
                <td>年龄</td>
                <td>邮箱</td>
            </tr>
            <tbody id="stubody">

            </tbody>
        </table>
        <input type="button" id="stuButton" value="查询学生信息">
    </div>

</body>
</html>
