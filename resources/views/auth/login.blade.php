

@extends('layouts.auth')

@section('main')
    <!DOCTYPE html>
    <html>
    <head>
        <title>Animated Login Form</title>
        <link rel="stylesheet" type="text/css" href="css/loginstyle.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            .main-container {
                background-image: url("img/bg-login2.png");
                background-size: cover;
            }
            .child-content {
                background-color: whitesmoke;
                padding: 20px;
                border-radius: 30px;
                opacity: 0.8;
                margin-left: 100px;
            }
        </style>

    </head>
    <body>
        <div class="main-container">
            <div class="container">
                <div class="img">
                    <img src="">
                </div>
                <div class="login-content">
                    <div class="child-content">
                        <form action="/login" method="post">
                                @csrf
                                <img src="img/bg-logongawi.png">
                                <h2 class="title">Welcome</h2>
                                <div class="input-div one">
                                <div class="i">
                                        <i class="fas fa-user"></i>
                                </div>
                                <div class="div">
                                        <h5>Email</h5>
                                        <input type="email" class="input" name="email">
                                </div>
                                </div>
                                <div class="input-div pass">

                                <div class="i">
                                        <i class="fas fa-lock"></i>
                                </div>
                                <div class="div">
                                        <h5>Password</h5>
                                        <input type="password" class="input" name="password">
                                </div>
                                </div>
                                <a href="/home">Forgot Password?</a>
                                <input type="submit" class="btn" value="Login">
                            </form>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="js/loginjs.js"></script>
    </body>
    </html>

@endsection
