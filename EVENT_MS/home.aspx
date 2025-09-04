<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="EVENT_MS.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
   body {
     margin: 0;
     font-family: Arial, sans-serif;
     background: #f4f7fa;
     color: #333;
   }


   header {
     background: #0077cc;
     padding: 12px 40px;
     display: flex;
     justify-content: space-between;
     align-items: center;
   }
   header h2 {
     color: #fff;
     margin: 0;
   }
   nav a {
     color: #fff;
     text-decoration: none;
     margin-left: 20px;
     font-weight: bold;
   }
   nav a:hover {
     text-decoration: underline;
   }

   .hero {
     background: url("https://images.unsplash.com/photo-1521791136064-7986c2920216?auto=format&fit=crop&w=1600&q=80") no-repeat center/cover;
     height: 420px;
     display: flex;
     align-items: center;
     justify-content: center;
     text-align: center;
     color: white;
     position: relative;
   }
   .hero::after {
     content: "";
     position: absolute;
     top: 0; left: 0;
     width: 100%; height: 100%;
     background: rgba(0, 0, 0, 0.55);
   }
   .hero-content {
     position: relative;
     z-index: 2;
   }
   .hero h1 {
     font-size: 2.5rem;
     margin-bottom: 10px;
   }
   .hero p {
     font-size: 1.1rem;
     margin-bottom: 20px;
   }
   .hero .btn {
     background: blue;
     color: white;
     border: none;
     padding: 12px 24px;
     margin: 8px;
     border-radius: 6px;
     cursor: pointer;
     font-weight: bold;
     transition: 0.3s;
     text-decoration: none;
     display: inline-block;
   }
   .hero .btn:hover {
     background: light blue;
   }

   footer {
     background: #0077cc;
     text-align: center;
     color: #fff;
     padding: 14px 0;
     margin-top: 20px;
   }
 </style>
</head>
<body>


  <header>
    <h2>Leadership Event</h2>
    <nav>
      <a href="login.aspx">Login</a>
      <a href="signup.aspx">Sign up</a>
    </nav>
  </header><br /><br /><br />


  <section class="hero">
    <div class="hero-content">
      <h1>Welcome to  Leadership Conference</h1>
      <a href="admin.aspx" class="btn">Admin </a>
      <a href="login.aspx" class="btn">User </a>
    </div>
  </section>


  <footer>
    © 2025 Leadership Conference
  </footer>

</body>
</html>
