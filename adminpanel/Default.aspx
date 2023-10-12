﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="adminpanel_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Uday Group Of Industries Admin Login</title>
    <script src="js/jquery-2.2.4.min.js"></script>
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css" />
    <link rel="stylesheet" href="dist/css/adminlte.min.css" />
    <link href="css/admin.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet" />


     <!-- Toast Notification files -->
    <link href="css/toastr.css" rel="stylesheet" />
    <script src="js/toastr.js"></script>

    <script type="text/javascript">
        function TostTrigger(EventName, MsgText) {
            // code to be executed
            Command: toastr[EventName](MsgText)
            toastr.options = {
                "closeButton": true,
                "debug": false,
                "newestOnTop": false,
                "progressBar": false,
                "positionClass": "toast-top-full-width",
                "preventDuplicates": false,
                "onclick": null,
                "showDuration": "300",
                "hideDuration": "1000",
                "timeOut": "5000",
                "extendedTimeOut": "1000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "slideDown",
                "hideMethod": "fadeOut"
            }

        }
    </script>
</head>
<body class="hold-transition login-page">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="login-box">
                    <div class="login-logo">
                        <img src="images/customIcon/uday-industries-logo.png" alt="Uday Group Of Industries Logo" />
                    </div>
                    <h3 class="titleTxt txtCenter">Uday Group Of Industries<br /></h3>
                    <!-- /.login-logo -->
                    <div class="card">
                        <div class="card-body login-card-body">
                            <p class="login-box-msg"><b>Admin LogIn</b></p>
                            <div class="input-group mb-3">
                                <asp:TextBox ID="txtUserName" runat="server" class="form-control" Placeholder="Username"></asp:TextBox>
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <span class="fas fa-envelope"></span>
                                    </div>
                                </div>
                            </div>  
                            <div class="input-group mb-3">
                                <asp:TextBox ID="txtPwd" runat="server" class="form-control" TextMode="Password" Placeholder="Password"></asp:TextBox>
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <span class="fas fa-lock"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-8">
                                    <div>
                                    </div>
                                </div>  
                                <!-- /.col -->
                                <div class="col-4">
                                    <asp:Button ID="cmdSign" runat="server" Text="Sign In" class="btn btn-primary btn-block" OnClick="cmdSign_Click" />
                                </div>
                                <!-- /.col -->
                            </div>
                            <p class="mb-1">
                                <a href="forgetPwd.aspx" class="fPass" title="Forgot password recovery">Forgot password?</a>
                            </p>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
