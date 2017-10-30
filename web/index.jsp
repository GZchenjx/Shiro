<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Login Success</title>
  <script type="text/javascript">
      function confirmx(mess){
          alert(mess);
      }
  </script>
</head>
<body bgcolor="#f3f3f3">
<p align=center>
  <shiro:guest>Hi Guest</shiro:guest>
  <shiro:user>
    <shiro:principal />:你好，欢迎您</shiro:user>
  !

</p>

<form:form>
  <table id="contentTable" align=center>
    <thead>
    <tr>
      <th>序号</th>
      <th>登录名</th>
      <th>姓名</th>
      <th>性别</th>
      <shiro:hasAnyRoles name="administrator,common">
        <th>操作</th>
      </shiro:hasAnyRoles>
    </tr>
    </thead>
    <tbody>
  <%--  <c:forEach items="${users}" var="user" varStatus="status">
      <tr>
        <td>${ status.index + 1}</td>
        <td>${user.name}</td>
        <td>${user.realName}</td>
        <td><c:if test="${user.sex=='1'}">男</c:if>
          <c:if test="${user.sex=='0'}">女</c:if></td>
        <shiro:hasRole name="administrator">
          <td><a href="#"
                 onclick="return confirmx('确认要修改该用户吗？')">修改</a> <a
                  href="#" onclick="return confirmx('确认要删除该用户吗？')">删除</a></td>
        </shiro:hasRole>
        <shiro:hasRole name="common">
          <c:if test="${user.name==currentUser}">
            <td><a href="#"
                   onclick="return confirmx('确认要修改该用户吗？')">修改</a></td>
          </c:if>
        </shiro:hasRole>
      </tr>
    </c:forEach>--%>
    </tbody>
  </table>
</form:form>

</body>
</html>