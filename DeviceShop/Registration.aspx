<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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
        <form id="registrationForm" runat="server" style="background: beige; width: 50%;">
            <div style="padding: 10% 20%;">
                <h2 class="form-signup-heading" style="text-align: center; margin-bottom: 10%;">
                    Register</h2>
                <div style="display: flex;">
                    <div style="padding: 2.5%;">
                        <label for="txtFirstName">FirstName*</label>
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="Enter FirstName" required />

                    </div>
                    <div style="padding: 2.5%;">
                        <label for="txtLastName">LastName</label>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Enter LastName" />
                    </div>
                </div>
                <br />
                <div style="display: flex;">
                    <div style="padding: 2.5%;">
                        <label for="txtMobileNumber">Mobile Number*</label>
                        <asp:TextBox ID="txtMobileNumber" runat="server" TextMode= "Phone" CssClass="form-control" placeholder="Enter Mobile Number" required />

                    </div>
                    <div style="padding: 2.5%;">
                        <label for="txtEmail">Email*</label>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Enter Email" required/>
                        
                    </div>
                    
                </div>
                <br />
                <div style="padding: 2.5%; display: flex;">
                        <label for="rblGender" style="padding: 0 10% 0 0;">Gender</label>
                        <asp:RadioButtonList ID="rblGender" runat="server"  onselectedindexchanged="rblGender_SelectedIndexChanged" >
                            <asp:ListItem Text="Male" Value="M" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                        </asp:RadioButtonList>

                </div>
                <br />
                <div style="display: flex;">
                    <div style="padding: 2.5%;">
                        <label for="txtAddress">Address*</label>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Columns="50" Rows="5" CssClass="form-control" placeholder="Enter Address" required/>
                    </div>
                </div>
                <br />
                <div style="display: flex; flex-direction: column;">
                    <div style="padding: 2.5%;">
                        <label for="ddlMembershipType">Membership Type*</label>
                        <asp:DropDownList ID="ddlMembershipType" runat="server" AutoPostBack="True"   
                        DataTextField="membership_type" DataValueField="type_id" AppendDataBoundItems="true"   
                        onselectedindexchanged="ddlMembershipType_SelectedIndexChanged" CssClass="form-control">  
                            <asp:ListItem Value="0">--Select Type--</asp:ListItem>
                            <asp:ListItem Value="1">Monthly</asp:ListItem> 
                            <asp:ListItem Value="2">Quterly</asp:ListItem>
                            <asp:ListItem Value="3">Yearly</asp:ListItem> 
                            <asp:ListItem Value="4">Personal Training</asp:ListItem> 
                        </asp:DropDownList> 

                    </div>
                    <div style="padding: 2.5%;">
                        <label for="ddlTimings">Timings*</label>
                        <asp:DropDownList ID="ddlTimings" runat="server" AutoPostBack="True"   
                        DataTextField="timing_type" DataValueField="type_id" AppendDataBoundItems="true"   
                        onselectedindexchanged="ddlTimings_SelectedIndexChanged" CssClass="form-control">  
                            <asp:ListItem Value="0">--Select Timings--</asp:ListItem>
                            <asp:ListItem Value="1">Morning</asp:ListItem> 
                            <asp:ListItem Value="2">After-Noon</asp:ListItem>
                            <asp:ListItem Value="3">Evening</asp:ListItem> 
                            <asp:ListItem Value="4">Night</asp:ListItem> 
                        </asp:DropDownList> 
                        
                    </div>
                </div>
            
                <asp:Button ID="btnRegister" Text="Register" runat="server" Class="btn btn-primary" />
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
