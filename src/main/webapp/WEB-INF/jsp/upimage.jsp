<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/7/3
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>自拍上传</title>
</head>

<body>
<form action="/upload2" enctype="multipart/form-data" method="post">
    上传用户：<input type="text" name="user"><br/>
    上传文件1：<input type="file" name="file1"><br/>
    上传文件2：<input type="file" name="file2"><br/>
    <input type="submit" value="提交">
</form>
</body>
</html>