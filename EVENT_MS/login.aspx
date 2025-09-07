<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EVENT_MS.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            margin: 0;
            padding: 0;
        }

        .login-container {
            width: 420px;
            margin: 80px auto;
            background: #ffffff;
            border-radius: 15px;
            padding: 35px 25px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.2);
            animation: fadeIn 1s ease-in-out;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 8px;
            color: #0d47a1;
            font-size: 26px;
            font-weight: bold;
        }

        .login-container p {
            text-align: center;
            margin-bottom: 20px;
            color: #555;
            font-size: 14px;
        }

        table {
            width: 100%;
        }

        table td {
            padding: 10px;
            vertical-align: middle;
        }

        label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
            outline: none;
            transition: 0.3s;
            box-sizing: border-box;
        }

        .form-control:focus {
            border-color: #4facfe;
            box-shadow: 0 0 5px rgba(79, 172, 254, 0.8);
        }

        .aspNetButton {
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background: linear-gradient(135deg, #4facfe, #00c6ff);
            border: none;
            color: #fff;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            letter-spacing: 1px;
            transition: all 0.3s ease;
        }

        .aspNetButton:hover {
            background: linear-gradient(135deg, #0083b0, #00b4db);
            transform: translateY(-2px);
            box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
        }

        .footer-text {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
            color: #444;
        }

        .footer-text a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
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

        /* Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>

</head>
<body>
   <form id="form1" runat="server">
        <div class="login-container">
            <h2>Welcome Back</h2>
            <p>Please sign in to your account</p>

            <table>
                <tr>
                    <td><label for="txtEmail">Email Address</label></td>
                    <td><asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter email"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><label for="txtPassword">Password</label></td>
                    <td><asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox></td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="btnLogin" runat="server" CssClass="aspNetButton" Text="Sign In" OnClick="btnLogin_Click" />
                    </td>
                </tr>
            </table>

            <div class="footer-text">
                Don’t have an account? <a href="signup.aspx">Sign up here</a>
            </div>

            <asp:Label ID="lblError" runat="server" CssClass="error-label" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
