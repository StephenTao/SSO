<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>SSO Server login</title>
</head>
<body>
    <div class="container">
        <form method="post" action="login" enctype="application/x-www-form-urlencoded">
        <input type="hidden" name="origUrl" value="${origUrl}" />
        <c:if test="${not empty errInfo}">
            <div class="alert alert-danger" role="alert">${errInfo}</div>
        </c:if>
        <div class="form-group row">
            <label for="inputUserName" class="col-sm-2 col-form-label">User Name</label>
            <div class="col-sm-10">
                 <input type="text" class="form-control"name="account" value="${account}" placeholder="User Name">
            </div>
        </div>
        <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" name="passwd" id="inputPassword" placeholder="Password">
            </div>
        </div>
         <button type="submit" class="btn btn-primary mb-2">Login</button>
    </form>
    </div>
</body>
</html>