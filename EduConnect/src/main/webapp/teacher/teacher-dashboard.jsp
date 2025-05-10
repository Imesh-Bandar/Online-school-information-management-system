 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Teacher Dashboard - Assignment Management</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      display: flex;
      background: #e6f0ff;
    }

    .sidebar {
      width: 220px;
      background-color: #3b5998;
      color: white;
      height: 100vh;
      padding: 20px;
      position: fixed;
    }

    .sidebar h2 {
      margin-bottom: 20px;
      font-size: 20px;
      border-bottom: 1px solid #ccc;
      padding-bottom: 10px;
    }

    .sidebar ul {
      list-style-type: none;
      padding-left: 0;
    }

    .sidebar ul li {
      margin: 15px 0;
    }

    .sidebar ul li a {
      text-decoration: none;
      color: #d0e1ff;
      font-size: 16px;
      transition: color 0.3s;
    }

    .sidebar ul li a:hover {
      color: #ffffff;
    }

    .main-content {
      margin-left: 240px;
      padding: 30px;
      flex-grow: 1;
    }

    form {
      background: #ffffff;
      padding: 20px;
      border-radius: 8px;
      margin-bottom: 30px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    form input, textarea {
      display: block;
      width: 100%;
      margin-top: 10px;
      padding: 10px;
      margin-bottom: 15px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      background: white;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    table th, table td {
      padding: 12px;
      border-bottom: 1px solid #eee;
      text-align: left;
    }

    .btn {
      padding: 8px 15px;
      border: none;
      background: #4a90e2;
      color: white;
      border-radius: 5px;
      cursor: pointer;
    }

    .btn-delete {
      background: #d9534f;
    }

    .btn-edit {
      background: #f0ad4e;
      color: black;
    }

    .actions a {
      margin-right: 10px;
    }
  </style>
</head>
<body>

<div class="sidebar">
  <h2>Teacher Menu</h2>
  <ul>
    <li><a href="dashboard.jsp">Dashboard</a></li>
    <li><a href="assignments.jsp">Manage Assignments</a></li>
    <li><a href="submissions.jsp">Submissions</a></li>
    <li><a href="grades.jsp">Grades</a></li>
    <li><a href="logout.jsp">Logout</a></li>
  </ul>
</div>

<div class="main-content">
  <h1>Assignment Management</h1>

  <!-- Create Assignment Form -->
  <form action="AssignmentServlet" method="post">
    <input type="hidden" name="action" value="create">
    <label>Title:</label>
    <input type="text" name="title" required>

    <label>Description:</label>
    <textarea name="description" rows="4" required></textarea>

    <label>Due Date:</label>
    <input type="date" name="dueDate" required>

    <button class="btn" type="submit">Create Assignment</button>
  </form>

  <!-- Assignment Table -->
  <table>
    <thead>
      <tr>
        <th>Title</th>
        <th>Description</th>
        <th>Due Date</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <%-- Example row (replace with dynamic data) --%>
      <tr>
        <td>Science Project</td>
        <td>Research and present on climate change</td>
        <td>2025-05-20</td>
        <td class="actions">
          <a href="AssignmentServlet?action=edit&id=1" class="btn btn-edit">Edit</a>
          <a href="AssignmentServlet?action=delete&id=1" class="btn btn-delete" onclick="return confirm('Are you sure?');">Delete</a>
        </td>
      </tr>
      <%-- More rows dynamically from DB --%>
    </tbody>
  </table>
</div>

</body>
</html>
