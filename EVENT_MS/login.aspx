<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EVENT_MS.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
        }
        .login-container {
            width: 400px;
            margin: 50px auto;
            background: #fff;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 5px;
            color: #333;
        }
        .login-container p {
            text-align: center;
            margin-bottom: 20px;
            color: #666;
        }
        .aspNetButton {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            background: #007bff;
            border: none;
            color: white;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s;
        }
        .aspNetButton:hover {
            background: #0056b3;
        }
        .remember-forgot {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }
        .footer-text {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }
        .footer-text a {
            color: #007bff;
            text-decoration: none;
        }
        .footer-text a:hover {
            text-decoration: underline;
        }
        .error-label, .validation {
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Welcome Back</h2>
            <p>Please sign in to your account</p>

            <table style="width:100%;">

                <tr>
                    <td><label for="txtEmail">Email Address</label></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter email"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td><label for="txtPassword">Password</label></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <div class="remember-forgot">
                            <asp:CheckBox ID="chkRemember" runat="server" Text=" Remember me" />
                            <a href="#">Forgot your password?</a>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="btnLogin" runat="server" CssClass="aspNetButton" Text="Sign In" OnClick="btnLogin_Click" />
                    </td>
                </tr>
            </table>


            <div class="footer-text">
                Don’t have an account? <a href="Register.aspx">Sign up here</a>
            </div>


            <asp:Label ID="lblError" runat="server" CssClass="error-label" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
