

<!doctype html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-10">
                        <div class="wrap d-md-flex">
                            <div class="img" style="background-image: url(https://i.imgur.com/qTtarn9.jpeg);">
                            </div>
                            <div id="signin-form" class="login-wrap p-4 p-md-5">
                                <div class="d-flex">
                                    <div class="w-100">
                                        <h3 class="mb-4">Sign In</h3>
                                    </div>
                                    <div class="w-100">
                                    </div>
                                </div>
                                <form action="login" method="get" >
                                    <p clas="text-danger">${mess}</p>
                                    <div class="form-group mb-3">
                                        <label class="label" for="name">Username</label>
                                        <input name="user" type="text" class="form-control" placeholder="Username" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="label" for="password">Password</label>
                                        <input name="pass" type="password" class="form-control" placeholder="Password" required>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign In</button>
                                    </div>
                                    <div class="form-group d-md-flex">
                                        <div class="w-50 text-left">
                                            <label class="checkbox-wrap checkbox-primary mb-0">Remember Me
                                                <input type="checkbox" checked>
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <!--                                        <div class="w-50 text-md-right">
                                                                                    <a href="#">Forgot Password</a>
                                                                                </div>-->
                                    </div>
                                </form>
                                <p class="text-center">Not a member? <a href="#" onclick="showSignUpForm()">Sign Up</a></p>
                            </div>
                            <div id="signup" class="login-wrap p-4 p-md-5" style="display:none;">
                                <div class="d-flex">
                                    <div class="w-100">
                                        <h3 class="mb-4">Sign Up</h3>
                                    </div>
                                    <div class="w-100">
                                        <button onclick="showSignInForm()" class="btn btn-primary rounded submit px-3">Back to Sign In</button>
                                    </div>                                        
                                </div>
                                <!-- Add your Sign Up form here -->
                                <form action="signup" method="get">
                                    <div class="form-group mb-3">
                                        <label class="label" for="name">Username</label>
                                        <input name="user" type="text" class="form-control" placeholder="Username" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="label" for="password">Password</label>
                                        <div class="input-group">
                                            <input name="pass" id="passwordInput" type="password" class="form-control" placeholder="Password" required>
                                            <div class="input-group-append">
                                                <button class="btn btn-outline-secondary" type="button" id="togglePassword">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="label" for="repassword">Confirm Password</label>
                                        <div class="input-group">
                                            <input name="repass" id="repasswordInput" type="password" class="form-control" placeholder="Confirm Password" required>
                                            <div class="input-group-append">
                                                <button class="btn btn-outline-secondary" type="button" id="toggleRePassword">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign Up</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

        <script>
                                            function showSignInForm() {
                                                document.getElementById("signin-form").style.display = "block";
                                                document.getElementById("signup").style.display = "none";
                                            }

                                            function showSignUpForm() {
                                                document.getElementById("signup").style.display = "block";
                                                document.getElementById("signin-form").style.display = "none";
                                            }
        </script>

        <script>
            var passwordInput = document.getElementById("passwordInput");
            var repasswordInput = document.getElementById("repasswordInput");
            var togglePassword = document.getElementById("togglePassword");
            var toggleRePassword = document.getElementById("toggleRePassword");

            passwordInput.addEventListener("input", function () {
                if (passwordInput.value.length > 0) {
                    togglePassword.style.display = "inline-block";
                } else {
                    togglePassword.style.display = "none";
                }
            });

            repasswordInput.addEventListener("input", function () {
                if (repasswordInput.value.length > 0) {
                    toggleRePassword.style.display = "inline-block";
                } else {
                    toggleRePassword.style.display = "none";
                }
            });

            togglePassword.addEventListener("click", function () {
                if (passwordInput.type === "password") {
                    passwordInput.type = "text";
                    this.innerHTML = '<i class="fa fa-eye-slash" aria-hidden="true"></i>';
                } else {
                    passwordInput.type = "password";
                    this.innerHTML = '<i class="fa fa-eye" aria-hidden="true"></i>';
                }
            });

            toggleRePassword.addEventListener("click", function () {
                if (repasswordInput.type === "password") {
                    repasswordInput.type = "text";
                    this.innerHTML = '<i class="fa fa-eye-slash" aria-hidden="true"></i>';
                } else {
                    repasswordInput.type = "password";
                    this.innerHTML = '<i class="fa fa-eye" aria-hidden="true"></i>';
                }
            });
        </script>

    </body>
</html>
