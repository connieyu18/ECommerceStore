<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


  <div class="header">
        <div class="leftbox">
            <img class="logo" src="../img/mylogo.png">  
        </div>
        <div class="centerbox">
            <h2>Checkout</h2>
        </div>
        <div class="rightbox">
        </div>
    </div>
    <div class="row">
        <div class="col-11">
        <div class="row">
        <div class="col-sm-8">
            <div class="panel panel-default">
                <div class="panel-body">  
                        <div  class='span2 sidebar'>
                                <ul class="nav nav-tabs nav-stacked">
                                   <div class="navbar1"><i class="fa fa-home">  <a id="navBar" [routerLink]="['newsfeed']">   Home</a></i> </div>
                                    <div class="navbar1"><i class="fa fa-user-circle"><a id="navBar"  href="/" onclick="return false;" (click)="userRedirect()">   Profile</a></i></div>
                                    <div class="navbar1"> <img class="logouticon" src="assets/img/signout.svg"><a id="navBar"   (click)="logoutUser()" >Logout</a>  </div>
                                </ul>
                        </div>
                </div>
            </div>
        </div>
        <div class="col-3">
                
        </div>
        </div>
    <div class="col"></div>
    </div>
    </div>

</body>
</html>



