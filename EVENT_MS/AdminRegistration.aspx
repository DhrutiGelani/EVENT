<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="EVENT_MS.AdminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #e0eafc, #cfdef3);
            margin: 0;
            padding: 0;
            color: #333;
        }

        .login-container {
            width: 420px;
            margin: 70px auto;
            background: #ffffff;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.1);
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-15px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 10px;
            color: #2c3e50;
            font-size: 26px;
            font-weight: 600;
        }

        .login-container p {
            text-align: center;
            margin-bottom: 20px;
            color: #7f8c8d;
            font-size: 14px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table td {
            padding: 8px 6px;
            vertical-align: middle;
        }

        label {
            font-size: 14px;
            font-weight: 600;
            color: #34495e;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
            outline: none;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .form-control:focus {
            border-color: #3498db;
            box-shadow: 0 0 6px rgba(52, 152, 219, 0.4);
        }

        .aspNetButton {
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background: linear-gradient(135deg, #27ae60, #1e8449);
            border: none;
            color: #ffffff;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            font-size: 15px;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .aspNetButton:hover {
            background: linear-gradient(135deg, #1e8449, #145a32);
            transform: translateY(-2px);
        }

        .footer-text {
            text-align: center;
            margin-top: 18px;
            font-size: 14px;
            color: #7f8c8d;
        }

        .footer-text a {
            color: #3498db;
            text-decoration: none;
            font-weight: 600;
        }

        .footer-text a:hover {
            text-decoration: underline;
        }

        .error-label {
            color: #e74c3c;
            text-align: center;
            margin-top: 12px;
            font-size: 13px;
            font-weight: 600;
        }
    </style>
</head>
<body><br /><br />
       <form id="form1" runat="server">
        <div class="login-container">
            <h2>Admin Registration</h2>
            <p>Please fill in the details to create an account</p>
            <table>
               <%-- <tr>
                    <td><label for="txtName">Full Name</label></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter full name"></asp:TextBox>
                    </td>
                </tr>--%>
                <tr>
                    <td><label for="txtUsername">Username</label></td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
                    </td>
                </tr>
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
                    <td><label for="txtConfirmPassword">Confirm Password</label></td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="btnRegister" runat="server" CssClass="aspNetButton" Text="Register" OnClick="btnRegister_Click" />
                    </td>
                </tr>
            </table>

            <div class="footer-text">
                Already have an account? <a href="AdminLogin.aspx">Login here</a>
            </div>

            <asp:Label ID="lblError" runat="server" CssClass="error-label" Visible="false"></asp:Label>
        </div>
    </form>
    </body>
</html>
