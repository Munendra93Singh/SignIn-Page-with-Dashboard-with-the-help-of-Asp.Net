<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="LoginSignup.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">


        <div class=" page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                        <div>
                            <h2>Welcome to Dashboard</h2>
                        </div>
                        <div class="pr-lg-5">
                            <img src="Helper/img/img.jpeg" alt="" class="img-fluid" />
                        </div>
                    </div>

                </div>
                <div class="col-lg-5 px-lg-4">
                    <h3 class="mb-4">About Us</h3>

                    <div class="form-group mb-4">
                        <p>
                            Designed to revolutionize the way users connect and interact by facilitating intelligent and personalization matching
                        </p>
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
