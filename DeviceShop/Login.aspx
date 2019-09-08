<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="userLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            margin: 20pt !important;
        }
    </style>
</head>
<body>
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
        media="screen" />
    <div style="display: flex; justify-content: center;">
        <form id="loginForm" runat="server" style="background: beige; width: 50%;">
            <div style="padding: 10% 30%;">
                <h2 class="form-signin-heading" style="text-align: center; margin-bottom: 10%;">Login</h2>
                <label for="txtUsername">Username*</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username" required />
                <br />
                <label for="txtPassword">Password*</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter Password" required />
                <div class="checkbox">
                    <asp:CheckBox ID="chkRememberMe" Text="Remember Me" runat="server" />
                </div>
                <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="ValidateUser" Class="btn btn-primary" />
                <br />
                <br />
                <div id="dvMessage" runat="server" visible="false" class="alert alert-danger">
                    <strong>Error!</strong>
                    <asp:Label ID="lblMessage" runat="server" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
