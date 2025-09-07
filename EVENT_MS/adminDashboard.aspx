<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="EVENT_MS.adminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, sans-serif;
    }

    body {
      display: flex;
      min-height: 100vh;
      background: #f5f5f5;
    }

    /* Sidebar */
    .sidebar {
      width: 220px;
      background: #111;
      color: #fff;
      display: flex;
      flex-direction: column;
      padding-top: 20px;
    }

    .sidebar h2 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 22px;
    }

    .sidebar a {
      display: block;
      padding: 15px 20px;
      color: #fff;
      text-decoration: none;
      border-left: 4px solid transparent;
      transition: 0.3s;
    }

    .sidebar a:hover,
    .sidebar a.active {
      background: #e91e63;
      border-left: 4px solid #fff;
    }

    /* Main Area */
    .main {
      flex: 1;
      display: flex;
      flex-direction: column;
    }

    /* Header */
    header {
      background: #fff;
      padding: 15px 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom: 1px solid #ddd;
    }

    header h1 {
      font-size: 20px;
      font-weight: bold;
    }

    header .logout {
      background: #e91e63;
      color: #fff;
      padding: 8px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    /* Dashboard */
    main {
      flex: 1;
      padding: 20px;
    }

    .dashboard {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 20px;
    }

    .card {
      background: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 3px 6px rgba(0,0,0,0.1);
      text-align: center;
    }

    .card h3 {
      font-size: 24px;
      margin-bottom: 10px;
    }

    .card p {
      margin-bottom: 15px;
      font-size: 14px;
      color: #555;
    }

    .card a {
      display: inline-block;
      padding: 8px 12px;
      background: #e91e63;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
      font-size: 14px;
    }

    /* Card colors */
    .blue { color: #2196f3; }
    .green { color: #4caf50; }
    .orange { color: #ff9800; }
    .red { color: #f44336; }

    /* Footer */
    footer {
      background: #222;
      color: #fff;
      text-align: center;
      padding: 12px;
      font-size: 14px;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main Section -->
    <main>
      <div class="dashboard">
        <div class="card blue">
          <h3>25</h3>
          <p>Active User</p>
          <a href="#">View Details</a>
        </div>

        <div class="card green">
          <h3>69</h3>
          <p>Total Event</p>
          <a href="#">View Details</a>
        </div>

        <div class="card orange">
          <h3>246</h3>
          <p>Total Booking</p>
          <a href="#">View Details</a>
        </div>

        <div class="card red">
          <h3>1</h3>
          <p>Active Services</p>
          <a href="#">View Details</a>
        </div>

        <div class="card blue">
          <h3>5</h3>
          <p>Active Plan</p>
          <a href="#">View Details</a>
        </div>

        <div class="card green">
          <h3>0</h3>
          <p>New Request</p>
          <a href="#">View Details</a>
        </div>
      </div>
    </main>

</asp:Content>
