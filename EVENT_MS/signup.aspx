<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="EVENT_MS.signup" %>

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
            width: 400px;
            margin: 50px auto;
            background: #ffffff;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }


        .login-container h2 {
            text-align: center;
            margin-bottom: 5px;
            color: #333333;
        }

        .login-container p {
            text-align: center;
            margin-bottom: 20px;
            color: #666666;
        }


        table {
            width: 100%;
            border-collapse: collapse;
        }

        table td {
            padding: 8px;
            vertical-align: middle;
        }

        label {
            font-size: 14px;
            font-weight: bold;
            color: #444444;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            border-radius: 6px;
            border: 1px solid #cccccc;
            font-size: 14px;
            outline: none;
            transition: border-color 0.3s;
        }

        .form-control:focus {
            border-color: #007bff;
        }


        .aspNetButton {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            background: #007bff;
            border: none;
            color: #ffffff;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .aspNetButton:hover {
            background: #0056b3;
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

        .error-label {
            color: red;
            text-align: center;
            margin-top: 10px;
            font-size: 14px;
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
            <h2>Create Account</h2>
            <p>Please fill in the details to register</p>
            <table style="width: 100%;">

                <tr>
                    <td>
                        <label for="txtName">Full Name</label></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter full name"></asp:TextBox>
                    </td>
                </tr>

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

                <tr>
                    <td>
                        <label for="txtConfirmPassword">Confirm Password</label></td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Re-enter password"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="btnRegister" runat="server" CssClass="aspNetButton" Text="Register" OnClick="btnRegister_Click" />
                    </td>
                </tr>
            </table>

            <div class="footer-text">
                Already have an account? <a href="Login.aspx">Login here</a>
            </div>

            <asp:Label ID="lblError" runat="server" CssClass="error-label" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
