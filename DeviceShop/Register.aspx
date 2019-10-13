<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="RegisterStyle.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="signupSection">
        <div class="container  ">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div id="first">
                        <div class="myform form ">
                            <div class="logo mb-3">
                                <div class="col-md-12 text-center">
                                    <h1 >SignUp</h1>
                                </div>
                            </div>
                        <form action="#" method="post" name="registration">
                            <div class="form-group">
                                <label for="txtFirstName">First Name*</label>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" aria-describedby="firstnameHelp" placeholder="Enter First Name" required />
                            </div>
                            <div class="form-group">
                                <label for="txtLastName">Last Name*</label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" aria-describedby="lastnameHelp" placeholder="Enter Last Name" required />
                            </div>
                            <div class="form-group">
                                <label for="txtEmailId">Email Id*</label>
                                <asp:TextBox ID="txtEmailId" runat="server" TextMode="Email"  CssClass="form-control" aria-describedby="emailidHelp" placeholder="Enter Email Id" required />
                            </div>
                            <div class="form-group">
                               <label for="txtMobileNumber">Mobile Number*</label>
                               <asp:TextBox ID="txtMobileNumber" runat="server" TextMode= "Phone" CssClass="form-control" placeholder="Enter Mobile Number" required />
                            </div>
                            <div class="form-group">
                                <label for="rblGender" style="padding: 0 10% 0 0;">Gender</label>
                                <asp:RadioButtonList ID="rblGender" runat="server"  onselectedindexchanged="rblGender_SelectedIndexChanged" >
                                    <asp:ListItem Text="Male" Value="M" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group">
                                <label for="txtAddress">Address*</label>
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Columns="50" Rows="5" CssClass="form-control" placeholder="Enter Address" required/>
                            </div>
                            <div class="form-group">
                                <label for="ddlMembershipType">Membership Type*</label>
                                <asp:DropDownList ID="ddlMembershipType" runat="server" AutoPostBack="True"   
                                DataTextField="membership_type" DataValueField="type_id" AppendDataBoundItems="true"   
                                onselectedindexchanged="ddlMembershipType_SelectedIndexChanged" CssClass="form-control">  
                                    <asp:ListItem Value="0">-- Select Type --</asp:ListItem>
                                    <asp:ListItem Value="1">Monthly</asp:ListItem> 
                                    <asp:ListItem Value="2">Quterly</asp:ListItem>
                                    <asp:ListItem Value="3">Yearly</asp:ListItem> 
                                    <asp:ListItem Value="4">Personal Training</asp:ListItem> 
                                </asp:DropDownList> 
                            </div>
                            <div class="form-group">
                                <label for="ddlTimings">Timings*</label>
                                <asp:DropDownList ID="ddlTimings" runat="server" AutoPostBack="True"   
                                DataTextField="timing_type" DataValueField="type_id" AppendDataBoundItems="true"   
                                onselectedindexchanged="ddlTimings_SelectedIndexChanged" CssClass="form-control">  
                                    <asp:ListItem Value="0">-- Select Timings --</asp:ListItem>
                                    <asp:ListItem Value="1">Morning</asp:ListItem> 
                                    <asp:ListItem Value="2">After-Noon</asp:ListItem>
                                    <asp:ListItem Value="3">Evening</asp:ListItem> 
                                    <asp:ListItem Value="4">Night</asp:ListItem> 
                                </asp:DropDownList> 
                            </div>
                            <div class="col-md-12 text-center mb-3">
                                <asp:Button ID="btnRegister" Text="Get Started" runat="server" class=" btn btn-block mybtn btn-primary tx-tfm" />
                            </div>
                            <div class="col-md-12 ">
                                <div class="form-group">
                                    <p class="text-center"><a href="#" id="signin">Already have an account?</a></p>
                                </div>
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
