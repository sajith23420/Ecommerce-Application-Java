<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
      body {
        padding-top: 20px;
        box-sizing: border-box;
        padding-left: 200px;
        background-image: url('img7.jpg');
      }

      .container {
        display: flex;
      }

      .column1 {
        padding-right: 70px;
        padding-top: 10px;
        padding-bottom: 30px;
        width: 80%;
        height: 600px;
        background-image: url('img.jpg');
        border-radius: 20px;
        box-shadow: 7px 0 0px 6px rgb(255, 255, 255);
      }

      .column2 {
        float: right;
        width: 300px;
        height: 500px;
        padding-top: 40px;
      }

      h2 {
        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        font-weight: 900;
      }

      .form-box {
        position: relative;
        width: 400px;
        height: 550px;
        border: 2px solid rgb(121, 9, 9);
        border-radius: 20px;
        backdrop-filter: blur(25px);
        display: flex;
        justify-content: center;
        align-items: center;
        color: aliceblue;
        background-color: #ff06063c;
        box-shadow: 1px 0 6px rgb(255, 255, 255);
      }

      .form-box h2 {
        text-align: center;
        font-size: 32px;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        -webkit-text-fill-color: rgb(255, 254, 254);
        /* Will override color (regardless of order) */
        -webkit-text-stroke-width: 2px;
        -webkit-text-stroke-color: rgb(121, 9, 9);
      }

      .form-box .input-box {
        margin: 20px 0;
        width: 200px;
        border-bottom: 2px solid rgb(121, 9, 9);
      }

      .form-box .input-box input {
        width: 100%;
        height: 45px;
        background: transparent;
        border: none;
        outline: none;
        padding: 0 10px 0 5px;
        font-size: 16px;
        color: #fff;
      }

      ::placeholder {
        color: rgb(255, 255, 255);
        opacity: 0.5;
        /* Firefox */
      }

      .btn1 {
        color: #fff;
        background: rgb(120, 0, 0);
        width: 100%;
        height: 50px;
        border-radius: 5px;
        outline: none;
        border: none;
        font-size: 17px;
        cursor: pointer;
        box-shadow: 1px 0 6px rgb(255, 255, 255);
      }

      .form-box div {
        margin-bottom: 3px;
      }

      .form-box span a {
        color: gold;
      }

      #alert {
        color: rgb(255, 255, 255);
        font-weight: 300;
        margin: 10px;
        padding: 0px;
        background-color: rgb(71, 0, 0);
        font-size: medium;
        text-align: center;
        border-radius: 2px;
      }
    </style>
  </head>
  <body>
    <div>
      <div class="column1">
        <div class="column2">
          <div class="container">
            <div class="form-box">
              <form action="" name="Formfill" onsubmit="return validation()" method="POST">
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
                  <input type="submit" class="btn1" onclick="validation()" value="Sign Up">
                </div>
                <br>
                <div>
                  <span>I Already Have An Account <a href="signin.html">Login</a>
                  </span>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    <script>
      function validation() {
        if (document.Formfill.Username.value == "") {
          document.getElementById("alert").innerHTML = " Please Enter Your User Name ";
          return false;
        }
        if (document.Formfill.Email.value == "") {
          document.getElementById("alert").innerHTML = "Enter Your Email";
          return false;
        }
        if (document.Formfill.Password.value == "") {
          document.getElementById("alert").innerHTML = "Please Enter Your Password";
          return false;
        }
        if (document.Formfill.Password.value.length < 6) {
          document.getElementById("alert").innerHTML = "Your Password Must Be Six Digits";
          return false;
        }
        if (document.Formfill.cPassword.value == "") {
          document.getElementById("alert").innerHTML = "Enter Conform Password";
          return false;
        }
        if (document.Formfill.cPassword.value !== document.Formfill.Password.value) {
          document.getElementById("alert").innerHTML = "Password Does Not Match";
          return false;
        }
        if (document.Formfill.Password.value == document.Formfill.cPassword.value) {
          popup.classList.add("open-slide")
          return false;
        }
      }
      var popup = document.getElementById('popup');

      function CloseSlide() {
        popup.classList.remove('open-slide')
      }
    </script>
  </body>
</html>
