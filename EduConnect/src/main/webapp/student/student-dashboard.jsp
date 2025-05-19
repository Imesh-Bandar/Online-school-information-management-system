<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Assignment Dashboard</title>
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: #f0f2f5;
    }

    .dashboard {
      display: flex;
      min-height: 100vh;
    }

    .sidebar {
      width: 240px;
      background-color: #1e1e2f;
      color: #fff;
      padding: 20px;
      display: flex;
      flex-direction: column;
    }

    .sidebar h2 {
      font-size: 24px;
      margin-bottom: 40px;
    }

    .sidebar a {
      color: #ccc;
      text-decoration: none;
      margin-bottom: 20px;
      font-size: 16px;
      transition: 0.3s;
    }

    .sidebar a:hover {
      color: #fff;
    }

    .main {
      flex: 1;
      padding: 30px;
      background-color: #f9fbfd;
    }

    .main h1 {
      font-size: 28px;
      margin-bottom: 20px;
    }

    .controls {
      margin-bottom: 20px;
    }

    .controls button {
      background: #4a90e2;
      color: white;
      border: none;
      padding: 10px 20px;
      margin-right: 10px;
      font-size: 14px;
      border-radius: 6px;
      cursor: pointer;
      transition: 0.3s;
    }

    .controls button:hover {
      background: #3b78c4;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      background-color: #fff;
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0 4px 8px rgba(0,0,0,0.05);
    }

    th, td {
      padding: 14px 16px;
      text-align: left;
      border-bottom: 1px solid #eaeaea;
    }

    th {
      background-color: #f5f6fa;
      font-weight: 600;
    }

    tr:hover {
      background-color: #f1f9ff;
    }

    .action-buttons form {
      display: inline;
    }

    .action-buttons button {
      padding: 6px 12px;
      font-size: 13px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-right: 5px;
    }

    .edit-btn {
      background-color: #f1c40f;
      color: #000;
    }

    .delete-btn {
      background-color: #e74c3c;
      color: #fff;
    }
  </style>
</head>
<body>

<div class="dashboard">
  <div class="sidebar">
    <h2>Student Menu</h2>
    <a href="#">Dashboard</a>
    <a href="#">My Assignments</a>
    <a href="#">Grades</a>
    <a href="#">Logout</a>
  </div>

  <div class="main">
    <h1>Assignment Submissions</h1>

    <div class="controls">
      <form action="AddAssignmentServlet" method="get" style="display:inline;">
        <button type="submit">➕ Add Assignment</button>
      </form>
    </div>

    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Submitted Date</th>
          <th>Status</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <%-- Static sample data --%>
        <tr>
          <td>1</td>
          <td>English Essay</td>
          <td>2025-05-07</td>
          <td>Submitted</td>
          <td class="action-buttons">
            <form action="EditAssignmentServlet" method="get">
              <input type="hidden" name="id" value="1" />
              <button type="submit" class="edit-btn">Edit</button>
            </form>
            <form action="DeleteAssignmentServlet" method="post" onsubmit="return confirm('Are you sure?');">
              <input type="hidden" name="id" value="1" />
              <button type="submit" class="delete-btn">Delete</button>
            </form>
          </td>
        </tr>
        <tr>
          <td>2</td>
          <td>History Report</td>
          <td>2025-05-08</td>
          <td>Pending</td>
          <td class="action-buttons">
            <form action="EditAssignmentServlet" method="get">
              <input type="hidden" name="id" value="2" />
              <button type="submit" class="edit-btn">Edit</button>
            </form>
            <form action="DeleteAssignmentServlet" method="post" onsubmit="return confirm('Are you sure?');">
              <input type="hidden" name="id" value="2" />
              <button type="submit" class="delete-btn">Delete</button>
            </form>
          </td>
        </tr>

        <%-- Dynamic Data Example (from request attribute) --%>
        <%--
        List<Assignment> assignments = (List<Assignment>) request.getAttribute("assignments");
        if (assignments != null) {
          for (Assignment a : assignments) {
        %>
        <tr>
          <td><%= a.getId() %></td>
          <td><%= a.getTitle() %></td>
          <td><%= a.getDateSubmitted() %></td>
          <td><%= a.getStatus() %></td>
          <td class="action-buttons">
            <form action="EditAssignmentServlet" method="get">
              <input type="hidden" name="id" value="<%= a.getId() %>" />
              <button type="submit" class="edit-btn">Edit</button>
            </form>
            <form action="DeleteAssignmentServlet" method="post" onsubmit="return confirm('Are you sure?');">
              <input type="hidden" name="id" value="<%= a.getId() %>" />
              <button type="submit" class="delete-btn">Delete</button>
            </form>
          </td>
        </tr>
        <% } } %>
        --%>

      </tbody>
    </table>
  </div>
</div>

</body>
</html>
