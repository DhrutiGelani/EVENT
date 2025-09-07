<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EVENT_MS.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
        }

        .login-container {
            width: 420px;
            margin: 60px auto;
            background: #ffffff;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.12);
        }

            .login-container h2 {
                text-align: center;
                margin-bottom: 8px;
                color: #333333;
                font-size: 24px;
            }

            .login-container p {
                text-align: center;
                margin-bottom: 25px;
                color: #666666;
                font-size: 14px;
            }

        table {
            width: 100%;
            border-collapse: collapse;
        }

            table td {
                padding: 10px;
                vertical-align: middle;
            }

        label {
            font-size: 14px;
            font-weight: bold;
            color: #444444;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #cccccc;
            font-size: 14px;
            outline: none;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

            .form-control:focus {
                border-color: #007bff;
                box-shadow: 0 0 4px rgba(0,123,255,0.4);
            }

        .aspNetButton {
            width: 100%;
            padding: 12px;
            margin-top: 18px;
            background: #007bff;
            border: none;
            color: #ffffff;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s, transform 0.1s;
        }

            .aspNetButton:hover {
                background: #0056b3;
            }

            .aspNetButton:active {
                transform: scale(0.98);
            }

        .remember-forgot {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 13px;
            margin-top: 5px;
        }

            .remember-forgot a {
                color: #007bff;
                text-decoration: none;
            }

                .remember-forgot a:hover {
                    text-decoration: underline;
                }

        .footer-text {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
        }

            .footer-text a {
                color: #007bff;
                text-decoration: none;
            }

                .footer-text a:hover {
                    text-decoration: underline;
                }

        .error-label {
            color: red;
            text-align: center;
            margin-top: 12px;
            font-size: 14px;
            font-weight: bold;
        }

        .validation {
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

            <table style="width: 100%;">

                <tr>
                    <td>
                        <label for="txtEmail">Email Address</label></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter email"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="txtPassword">Password</label></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                    </td>
                </tr>

              <%--  <tr>
                    <td colspan="2">
                        <div class="remember-forgot">
                            <asp:CheckBox ID="chkRemember" runat="server" Text=" Remember me" />
                            <a href="#">Forgot your password?</a>
                        </div>
                    </td>
                </tr>--%>

                <tr>
                    <td colspan="2" style="text-align: center;">
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
