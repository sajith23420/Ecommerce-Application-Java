<!DOCTYPE html>

<html>
    <head>
        <title>Login form</title>
    </head>
    
    <body>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "poppins", sans-serif;
            }

            body {
                background-color: rgb(24, 23, 23);
                background-position: center;
                background-size: cover;
                min-height: 100vh;
                width: 100%;
            }

            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }

            h2 {
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                font-weight: 900;
            }

            .form-box {
                position: relative;
                width: 400px;
                height: 600px;
                border: 2px solid rgba(255, 255, 2550.5);
                border-radius: 20px;
                backdrop-filter: blur(15px);
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .form-box h2 {
                color: white;
                text-align: center;
                font-size: 32px;
            }

            .form-box .input-box {
                position: relative;
                margin: 20px 0;
                width: 310px;
                border-bottom: 2px solid white;
            }

            .form-box .input-box input {
                width: 100%;
                height: 45px;
                background: transparent;
                border: none;
                outline: none;
                padding: 0 10px 0 5px;
                color: #fff;
                font-size: 16px;
            }

            .input::placeholder {
                color: #0b0b0b;
                background: transparent;
            }

            .btn1 {
                color: #fff;
                background: rgb(5, 184, 53);
                width: 100%;
                height: 50px;
                border-radius: 5px;
                outline: none;
                border: none;
                font-size: 17px;
                cursor: pointer;
                box-shadow: 3px 0 10px rgba(0, 0, 0, .5);
            }

            .form-box div {
                color: rgb(224, 222, 235);
                margin-top: 10%;
            }

            .form-box span a {
                margin: 20px;
                color: blue;
            }

            #alert {
                color: crimson;
                font-weight: 600;
                margin: 5%;
                background-color: black;
                font-size: medium;
                text-align: center;
                border: 2px solid black;
                border-radius: 5px;
            }

            .popup {
                width: 300px;
                background-color: rgb(55, 56, 56);
                border-radius: 6px;
                position: absolute;
                top: 0;
                left: 50%;
                transform: translate(-50%, -50%) scale(0);
                transition: transform .4s, top .4s;
                visibility: hidden;
                text-align: center;
                padding: 0 30px 30px;
                height: 300px;
                color: black;
            }

            .popup h3 {
                color: rgb(6, 243, 46);
                font-family: 'Times New Roman', Times, serif;
                font-weight: 900;
                font-size: 30px;
                margin-top: 14px;
            }

            .popup p {
                color: rgb(249, 249, 249);
                font-family: Georgia, 'Times New Roman', Times, serif;
                font-size: large;
                margin-top: 38px;
                padding: 3px;
            }

            .popup button {
                width: 100%;
                background-color: rgb(29, 246, 5);
                padding: 10px 0;
                margin-top: 50px;
                border: none;
                outline: none;
                font-size: 18px;
                color: rgb(227, 227, 240);
                border-radius: 4px;
                cursor: pointer;
                box-shadow: 0 0 0 2px black(0, 0, 0, 1);
                font-weight: 900;
            }

            .popup a {
                color: rgb(243, 19, 11);
                text-decoration: none;
                font-weight: 600;
                letter-spacing: 2px;
            }

            .open-slide {
                top: 50%;
                transform: translate(-50%, -50%) scale(1);
                visibility: visible;
            }
        </style>
        
        <div class="container">
            <div class="form-box">
                <form action="" name="Formfill" method="POST">
                    <h2>Sign Up</h2>
                    <p id="alert"></p>
                    <div class="input-box">
                        <input type="text" name="Username" placeholder="User Name">
                    </div>
                    <div class="input-box">
                        <input type="email" name="Email" placeholder="Email">
                    </div>
                    <div class="input-box">
                        <input type="password" name="Password" placeholder="Password">
                    </div>
                    <div class="input-box">
                        <input type="password" name="cPassword" placeholder="Conform Password">
                    </div>
                    <div class="btn1" style="margin-top: 40px;">
                        <input type="submit" class="btn1">
                    </div>
                    <br>
                    <div>
                        <span>I Already Have An Account <a href="signin.html">Login</a>
                        </span>
                    </div>
            </div>
            </form>
           
        </div>
        
    </body>
</html>
