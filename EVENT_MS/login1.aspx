<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="EVENT_MS.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
     body {
         font-family: Arial, sans-serif;
         background-color: #f4f6f8;
     }

     .login-container {
         width: 350px;
         margin: 50px auto;
         background: #fff;
         border-radius: 10px;
         padding: 25px;
         box-shadow: 0 4px 12px rgba(0,0,0,0.15);
     }

         .login-container h2 {
             text-align: center;
             margin-bottom: 20px;
             color: #333;
         }

         .login-container label {
             font-weight: bold;
             display: block;
             margin-top: 10px;
         }

         .login-container input[type=text],
         .login-container input[type=password] {
             width: 100%;
             padding: 10px;
             margin-top: 5px;
             border: 1px solid #ccc;
             border-radius: 6px;
             outline: none;
             transition: border-color 0.3s;
         }

             .login-container input[type=text]:focus,
             .login-container input[type=password]:focus {
                 border-color: #007bff;
             }

         .login-container input[type=submit],
         .login-container .aspNetButton {
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

             .login-container input[type=submit]:hover,
             .login-container .aspNetButton:hover {
                 background: #0056b3;
             }

         .login-container .error-label {
             color: red;
             text-align: center;
             margin-top: 10px;
         }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="login-container">
      <h2>Login</h2>
      <asp:Label Text="Username" runat="server" AssociatedControlID="txtEmail" />
      <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Username"></asp:TextBox>

      <asp:Label Text="Password" runat="server" AssociatedControlID="txtPassword" />
      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>

      <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="aspNetButton" OnClick="btnLogin_Click" />
      <a href="sign up.aspx" class="register-link">Don't have an account? Sign up</a>

      <div class="forgot-password">
          <a href="forgotpass.aspx">Forgot Password?</a>
      </div>

      <asp:Label ID="lblMessage" runat="server" CssClass="error-label"></asp:Label>

  </div>
</asp:Content>
