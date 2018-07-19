<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/6/27
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
    <title>本周相亲列表</title>

    <style type="text/css">
        table.gridtable {
            font-family: verdana,arial,sans-serif;
            font-size:11px;
            color:#333333;
            border-width: 1px;
            border-color: #666666;
            border-collapse: collapse;
        }
        table.gridtable th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #dedede;
        }
        table.gridtable td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #ffffff;
        }
    </style>

</head>
<body>
    <div class="miai-list">

    <table class="gridtable">
        <tr>
            <th>序号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>身高</th>
            <th>微信</th>
            <th>手机号</th>
            <th>所在城市</th>
            <th>日期</th>
            <th>备注</th>
            <th>头像</th>
        </tr>
        <c:forEach items="${miaiList}" var="list" varStatus="id">
            <tr>
                <td>${id.index +1}</td>
                <td>${list.name}</td>
                <td>${list.sex}</td>
                <td>${list.age}</td>
                <td>${list.height}</td>
                <td>${list.wechat}</td>
                <td>${list.iphone}</td>
                <td>${list.city}</td>
                <td><fmt:formatDate value="${list.create_date}" pattern="yyyy-MM-dd"/></td>
                <td>${list.remarks}</td>
                <td><img src="headimg/${list.name}_<fmt:formatDate value="${list.create_date}" pattern="yyyy-MM-dd"/>.${fn:split(list.via,".")[1]}" height="30px"></td>
            </tr>
        </c:forEach>
    </table>
    </div>
</body>
</html>

