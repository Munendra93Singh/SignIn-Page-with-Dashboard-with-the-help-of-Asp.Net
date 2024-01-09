<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="LoginSignup.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Helper/css/style.default.css" rel="stylesheet" />
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class=" page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">

                        <div class="pr-lg-5">
                            <img src="Helper/img/img.jpeg" alt="" class="img-fluid" />
                        </div>
                    </div>
                    <div class="col-lg-5 px-lg-4">
                        <h1 class="text-base text-primary text-uppercase mb-4">Sign up Here</h1>
                        <h2 class="mb-4">NestFind</h2>


                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtEmployeeid" required="true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Name" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtPwd" required="true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtFname" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder=" Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtEmail" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtoffice" Hidden="Hidden" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Office" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtdesg" Hidden="Hidden" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Branch" runat="server"></asp:TextBox>
                        </div>

                        <asp:Button Text="Sign up" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" OnClick="Unnamed_Click" />
                    </div>

                    <br />
                    <a href="login.aspx" cssclass="btn btn-primary" height="50px" width="400px">Sign Ip</a>
                    <span style="color: saddlebrown">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </span>
                </div>


            </div>

        </div>
    </form>
</body>
</html>
