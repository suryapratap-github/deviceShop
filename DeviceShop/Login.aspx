<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="LoginStyle.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="loginSection">
        <div class="container  ">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div id="first">
                        <div class="myform form ">
                            <div class="logo mb-3">
                                <div class="col-md-12 text-center">
                                    <h1>Admin Login</h1>
                                </div>
                            </div>
                            <form action="" method="post" name="login">
                                <div class="form-group">
                                    <label for="txtUserName">User Name*</label>
                                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" aria-describedby="usernameHelp" placeholder="Enter User Name" required />
                                </div>
                                <div class="form-group">
                                    <label for="txtPassword">Password*</label>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode= "Password" CssClass="form-control" placeholder="Enter Password" required />
                                </div>
                                <div class="form-group">
                                    <p class="text-center">By signing up you accept our <a href="#" class="textUnderline">Terms Of Use</a></p>
                                </div>
                                <div class="col-md-12 text-center ">
                                    <asp:Button ID="btnLogin" Text="Login" runat="server" class="btn btn-block mybtn btn-primary tx-tfm" />
                                </div>
                                <div class="form-group mt-3">
                                    <p class="text-center">Don't have an account? <a href="#" id="signup" class="textUnderline">Sign up here</a></p>
                                </div>
                                <div id="dvMessage" runat="server" visible="false" class="alert alert-danger">
                                    <strong>Error!</strong>
                                    <asp:Label ID="lblMessage" runat="server" />
                                </div>
                            </form>
                 
                        </div>
                    </div>
                </div>
            </div>
        </div>  
    </div> 
</asp:Content>

