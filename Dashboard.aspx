<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dashboard.aspx.vb" Inherits="BCRemitAssignment.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>

        .navbar {
  overflow: hidden;
  background-color: #4CAF50;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
}
        .navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}
        .navbar a.right {
  float: right;
}
        .navbar a:hover {
  background-color: #ddd;
  color: black;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <div class="navbar">

      <a href="Login.aspx" class="right">Logout</a>

        </div>
        </div>
        <asp:Label ID="sessionEmail" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
