<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginSignup.Login" %>

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
                        <h1 class="text-base text-primary text-uppercase mb-4">Login Here</h1>
                        <h2 class="mb-4">Welcome Back!</h2>

                        <div class ="form-group mb-4">
                            <asp:TextBox ID="txtemail" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" ></asp:TextBox>

                        </div>

                             <div class ="form-group mb-4">
                            <asp:TextBox ID="txtpass" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ></asp:TextBox>

                        </div>
                      
                        <asp:Button Text="Sing In" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" OnClick="Unnamed_Click"/>
                        <br />
                         <a href="Signup.aspx" CssClass="btn btn-primary" Height="50px" Width="400px">Sign Un</a>
                       
                    </div>
                </div>
            
               
                
            </div>
            
        </div>
         <span style="color: saddlebrown">
     <asp:Label ID="lblMsg" runat="server"></asp:Label>
 </span>
 <br />
    </form>
</body>
</html>
