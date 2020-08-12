<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Signup.aspx.vb" Inherits="BCRemitAssignment.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

* {box-sizing: border-box}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=email] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus, input[type=email] {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            </div>
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    <label for="fname"><b>First Name</b></label>
    <asp:TextBox type="text" ID="fname" name="fname" runat="server" placeholder="Enter First Name" required></asp:TextBox>
  
    <label for="lname"><b>Last Name</b></label>
    <asp:TextBox type="text" ID="lname" name="lname" runat="server" placeholder="Enter Last Name" required></asp:TextBox>

    <label for="email"><b>Email</b></label>
    <asp:TextBox type="email" ID="email" name="email" runat="server" placeholder="Enter Email Address" required></asp:TextBox>

    <label for="psw"><b>Password</b></label>
    <asp:TextBox type="password" ID="psw" name="psw" runat="server" placeholder="Enter Password" required></asp:TextBox>

    
    <asp:Button type="submit" ID="submit" CssClass="registerbtn" runat="server" Text="Register" />
  </div>

  <div class="container signin">
    <p>Already have an account? <a href="Login.aspx">Sign in</a>.</p>
  </div>
    </form>
        </div>
    </form>
</body>
</html>
