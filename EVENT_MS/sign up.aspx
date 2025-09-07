<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sign up.aspx.cs" Inherits="EVENT_MS.sign_up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
        }

        .signup-container {
            width: 350px;
            margin: 50px auto;
            background: #fff;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

            .signup-container h2 {
                text-align: center;
                margin-bottom: 20px;
                color: #333;
            }

            .signup-container label {
                font-weight: bold;
                display: block;
                margin-top: 10px;
            }

            .signup-container input[type=text],
            .signup-container input[type=password],
            .signup-container input[type=email] {
                width: 100%;
                padding: 10px;
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 6px;
                outline: none;
                transition: border-color 0.3s;
            }

            .signup-container input:focus {
                border-color: #007bff;
            }

            .signup-container .aspNetButton {
                width: 100%;
                padding: 10px;
                margin-top: 15px;
                background: blue;
                border: none;
                color: white;
                font-weight: bold;
                border-radius: 6px;
                cursor: pointer;
                transition: background 0.3s;
            }

                .signup-container .aspNetButton:hover {
                    background: #0056b3;
                }

        .login-link {
            text-align: center;
            margin-top: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup-container">
        <h2>Sign Up</h2>

        <asp:Label Text="Username" runat="server" AssociatedControlID="txtName" />
        <asp:TextBox ID="txtName" runat="server" placeholder="Enter Username"></asp:TextBox>

        <label for="txtEmail">Email Address</label>
         <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter email"></asp:TextBox>


        <asp:Label Text="Password" runat="server" AssociatedControlID="txtPassword" />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>

        <asp:Label Text="Confirm Password" runat="server" AssociatedControlID="txtConfirmPassword" />
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>

        <asp:Button ID="btnSignup" runat="server" Text="Sign Up" CssClass="aspNetButton" OnClick="btnSignup_Click" />

        <a href="Login.aspx" class="login-link">Already have an account? Login here</a>

        <asp:Label ID="lblMessage" runat="server" CssClass="error-label"></asp:Label>
    </div>
</asp:Content>
