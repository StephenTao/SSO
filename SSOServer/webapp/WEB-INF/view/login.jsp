<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" href="static/css/login.css">
    <title>SSO Server login</title>
</head>
<body>
    <div class="container">
        <div class="login">
            <form method="post" action="login" enctype="application/x-www-form-urlencoded" class=pdb50>
                <input type="hidden" name="origUrl" value="${origUrl}" />
                <div class="alert alert-info h5" role="alert">SSO-demo Sign in Page</div>
                <div class="form-group row pd125">
                    <label for="inputUserName" class="col-sm-4 col-form-label">User Name</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control"name="account" value="${account}" placeholder="User Name">
                    </div>
                </div>
                <div class="form-group row pd125">
                    <label for="inputPassword" class="col-sm-4 col-form-label">Password</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" name="passwd" id="inputPassword" placeholder="Password">
                    </div>
                </div>
                 <c:if test="${not empty errInfo}">
                    <div class="alert alert-danger" role="alert">${errInfo}</div>
                </c:if>
                <div class="form-group pd125">
                    <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                </div>
                <div class="form-group align-center">
                  <a href="forget_password">Forget Password?</a>
                </div>
            </form>
        </div>
    </div>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>