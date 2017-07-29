
<!-- Author: Ranjithprabhu K
     Date: 24 Dec 2015
	 Author URL: http://ranjithprabhu.in
	 Version: 1.0.0
--->

<!DOCTYPE html>
<html>
<head>
  <title>Angular Bootstrap Dashboard by Ranjithprabhu</title>
  <meta name="description" content="Angular Bootstrap Dashboard"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  
    <link href="./resources/Angular-Bootstrap/plugins/angular-material/angular-material.min.css" rel="stylesheet" />
    <!--CSS-->
    <link href="./resources/Angular-Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/css/site.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/css/style.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/css/nga.all.min.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/css/themes.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/css/dashboard.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/css/font-awesome.min.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/plugins/bootstrap-slider/slider.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/css/flexslider.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/plugins/owl-carousel/owl.theme.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/plugins/owl-carousel/owl.transitions.css" rel="stylesheet" />
    <link href="./resources/Angular-Bootstrap/plugins/owl-carousel/owl.carousel.css" rel="stylesheet" />
</head>
<body ng-app="app" class="hold-transition sidebar-mini {{theme}} {{layout}}">
<div class="container margin-top-80">
    <div class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2" data-ng-show="vm.signIn">
        <div class="panel panel-info">
            <div class="panel-heading text-center">
                Sign In
            </div>
            <div class="panel-body">
                <form name="vm.loginForm" class="form-horizontal" data-ng-submit="vm.login(vm.getUser);">
                    <div class="col-xs-12 input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="login-username" type="text" class="form-control" name="username" value="admin" placeholder="Username" data-ng-model="vm.getUser.Username" required>
                    </div>
                    <div class="col-xs-12 input-group margin-top-20">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="login-password" type="password" class="form-control" name="password" placeholder="Password" data-ng-model="vm.getUser.Password" required value="admin">
                    </div>
                    <div class="col-xs-12 margin-top-20">
                        <span class="pull-left">
                            <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                        </span>
                        <span class="pull-right">
                            <a href="#">Forgot Password?</a>
                        </span>
                    </div>
                    <div class="col-xs-12 margin-top-20">
                        <button type="submit" class="btn btn-block btn-success">
                            Login <span class="glyphicon glyphicon-play"></span>
                        </button>
                        <button type="button" class="btn btn-block btn-primary" data-ng-click="vm.signIn=false;">
                            Sign Up <span class="glyphicon glyphicon-hand-up"></span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" data-ng-show="!vm.signIn">
        <div class="panel panel-info">
            <div class="panel-heading text-center">
                Sign Up
            </div>
            <div class="panel-body">
                <form name="vm.registrationForm" data-ng-submit="vm.register();">
                    <div class="form-group">
                        <label for="email" class="col-md-12 control-label">Email</label>
                        <div class="col-md-12">
                            <input type="email" class="form-control" name="email" placeholder="Email Address" required data-ng-model="vm.setUser.Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="lastname" class="col-md-12 control-label margin-top-10">User Name</label>
                        <div class="col-md-12">
                            <input type="text" class="form-control" name="lastname" placeholder="Last Name" required data-ng-model="vm.setUser.Username">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-md-12 control-label margin-top-10">Password</label>
                        <div class="col-md-12">
                            <input type="password" class="form-control" name="password" placeholder="Password" required data-ng-model="vm.setUser.Password">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="cpasswd" class="col-md-12 control-label margin-top-10">Confirm Password</label>
                        <div class="col-md-12">
                            <input type="password" class="form-control" name="cpasswd" placeholder="Confirm Password" required data-ng-model="vm.setUser.confirmPassword">
                        </div>
                    </div>
                    <div class="col-xs-12 margin-top-20">
                        <div class="col-xs-6 padding-left-none">
                            <button type="submit" class="btn btn-block btn-success">
                                Register <span class="glyphicon glyphicon-play"></span>
                            </button>
                        </div>
                        <div class="col-xs-6 padding-right-none">
                            <button type="button" class="btn btn-block btn-warning" data-ng-click="vm.signIn=true;">
                                Cancel <span class="glyphicon glyphicon-move"></span>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>


    </div>

</div>
    <!--Scripts-->
    <script src="./resources/Angular-Bootstrap/js/jquery.min.js"></script>
    <script src="./resources/Angular-Bootstrap/js/bootstrap.min.js"></script>
    <script src="./resources/Angular-Bootstrap/plugins/bootstrap-slider/bootstrap-slider.js"></script>


    <script src="./resources/Angular-Bootstrap/js/angular.min.js"></script>
    <script src="./resources/Angular-Bootstrap/js/angular-animate.min.js"></script>
    <script src="./resources/Angular-Bootstrap/js/angular-ui-router-min.js"></script>
    <script src="./resources/Angular-Bootstrap/js/angular-resource.js"></script>
    <script src="./resources/Angular-Bootstrap/plugins/knob/jquery.knob.js"></script>
    <script src="./resources/Angular-Bootstrap/plugins/Chart.min.js"></script>
    <script src="./resources/Angular-Bootstrap/plugins/owl-carousel/owl.carousel.min.js"></script>

    <!-- Angular Material Library -->
    <script src="./resources/Angular-Bootstrap/js/angular-material.min.js"></script>
    <script src="./resources/Angular-Bootstrap/js/angular-aria.min.js"></script>
    <script src="./resources/Angular-Bootstrap/js/angular-messages.min.js"></script>

    <script src="./resources/Angular-Bootstrap/js/angular-flash.js"></script>
    <script src="./resources/Angular-Bootstrap/js/angular-sanitize.js"></script>
    <script src="./resources/Angular-Bootstrap/js/ui-bootstrap-tpls-0.13.0.min.js"></script>

    <!--Common-->

    <script src="./resources/Angular-Bootstrap/app/common/config.js"></script>

    <!--main app-->
    <script src="./resources/Angular-Bootstrap/app/app.js"></script>
    <script src="./resources/Angular-Bootstrap/app/common/appCtrl.js"></script>
    <script src="./resources/Angular-Bootstrap/app/services/apiService.js"></script>

    <!--Login Module-->
    <script src="./resources/Angular-Bootstrap/app/modules/login/loginMgmt.js"></script>
    <script src="./resources/Angular-Bootstrap/app/modules/login/loginService.js"></script>
    <script src="./resources/Angular-Bootstrap/app/modules/login/loginCtrl.js"></script>

    <!--Dashboard Module-->
    <script src="./resources/Angular-Bootstrap/app/modules/dashboard/dashboardApplication.js"></script>
    <script src="./resources/Angular-Bootstrap/app/modules/dashboard/dashboardService.js"></script>
        <!-- Controllers -->
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/websites.js"></script>
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/about.js"></script>
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/achievements.js"></script>
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/contact.js"></script>
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/education.js"></script>
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/experience.js"></script>
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/gallery.js"></script>
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/home.js"></script>
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/portfolio.js"></script>
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/recent.js"></script>
        <script src="./resources/Angular-Bootstrap/app/modules/dashboard/controllers/skills.js"></script>
    <div flash-message="5000"></div>
    <ui-view></ui-view>
    
</body>
</html>
