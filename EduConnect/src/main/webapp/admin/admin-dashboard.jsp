<%@ page import="java.util.List"%>
<%@ page import="com.educonnect.model.User"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<script src="https://cdn.tailwindcss.com"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css"
	rel="stylesheet">
</head>
<body class="bg-gray-100 text-gray-800">

	<!-- Header -->
	<header class="bg-white shadow sticky top-0 z-50">
		<div
			class="max-w-7xl mx-auto px-4 py-4 flex justify-between items-center">
			<h1 class="text-2xl font-bold text-indigo-600">Admin Dashboard</h1>
			<div class="text-sm">
				<span class="text-gray-600">Logged in as:</span> <span
					class="font-semibold text-indigo-700"> <%=session.getAttribute("userName")%>
					<%=session.getAttribute("userEmail") != null ? session.getAttribute("userEmail") : "Unknown"%>
				</span> <a href="${pageContext.request.contextPath}/login-page.jsp"
					onclick="return confirm('Are you sure you want to logout?');"
					class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md text-sm shadow">
					<i class="bi bi-box-arrow-right"></i> Logout
				</a>

			</div>

		</div>

	</header>

	<!-- Main Content -->
	<main class="max-w-7xl mx-auto px-4 py-8">


		<%
		List<User> users = (List<User>) request.getAttribute("userList");
		int studentCount = 0, teacherCount = 0, staffCount = 0, adminCount = 0;
		if (users != null) {
			for (User user : users) {
				String role = user.getRole().toLowerCase();
				if (role.equals("student"))
			studentCount++;
				else if (role.equals("teacher"))
			teacherCount++;
				else if (role.equals("staff"))
			staffCount++;
				else if (role.equals("principal") || role.equals("admin"))
			adminCount++; // Principal = Admin
			}
		}
		%>
		<!-- Count Cards -->
		<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
			<div
				class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition transform hover:scale-105">
				<div class="flex items-center space-x-4">
					<div class="text-white bg-blue-500 p-3 rounded-full">
						<i class="bi bi-people-fill text-xl"></i>
					</div>
					<div>
						<h3 class="text-lg font-semibold">Students</h3>
						<p class="text-2xl text-blue-600 font-bold"><%=studentCount%></p>
					</div>
				</div>
			</div>
			<div
				class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition transform hover:scale-105">
				<div class="flex items-center space-x-4">
					<div class="text-white bg-green-500 p-3 rounded-full">
						<i class="bi bi-person-workspace text-xl"></i>
					</div>
					<div>
						<h3 class="text-lg font-semibold">Teachers</h3>
						<p class="text-2xl text-green-600 font-bold"><%=teacherCount%></p>
					</div>
				</div>
			</div>
			<div
				class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition transform hover:scale-105">
				<div class="flex items-center space-x-4">
					<div class="text-white bg-yellow-500 p-3 rounded-full">
						<i class="bi bi-person-lines-fill text-xl"></i>
					</div>
					<div>
						<h3 class="text-lg font-semibold">Staff</h3>
						<p class="text-2xl text-yellow-600 font-bold"><%=staffCount%></p>
					</div>
				</div>
			</div>
			<div
				class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition transform hover:scale-105">
				<div class="flex items-center space-x-4">
					<div class="text-white bg-purple-500 p-3 rounded-full">
						<i class="bi bi-person-badge-fill text-xl"></i>
					</div>
					<div>
						<h3 class="text-lg font-semibold">Admin (Principal)</h3>
						<p class="text-2xl text-purple-600 font-bold"><%=adminCount%></p>
					</div>
				</div>
			</div>
		</div>


		<!-- Actions -->
		<div class="flex justify-between items-center mb-6">
			<form class="w-full max-w-md flex space-x-2">
				<input type="text"
					class="flex-grow px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500"
					placeholder="Search by name or email...">
				<button type="button"
					class="bg-indigo-600 text-white px-4 py-2 rounded-md hover:bg-indigo-700">
					<i class="bi bi-search"></i>
				</button>
			</form>
			<a href="admin/add-user.jsp"
				class="ml-4 flex items-center gap-2 bg-gradient-to-r from-green-400 to-green-500 hover:from-green-500 hover:to-green-600 text-white px-5 py-2.5 rounded-2xl shadow-md hover:shadow-lg transition-all duration-300 ease-in-out group"
				title="Click to add a new staff member"> <i
				class="bi bi-plus-circle text-lg group-hover:rotate-90 transition-transform duration-300"></i>
				<span class="font-semibold tracking-wide">ADD USER TO SYSTEM</span>
			</a>

		</div>

		<!-- User Cards -->
		<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">

			<%
			//loop users
			if (users != null && !users.isEmpty()) {
				for (User user : users) {
					String role = user.getRole().toLowerCase();
			%>

			<div
				class="bg-white p-5 rounded-lg shadow hover:shadow-lg transition duration-300">
				<!-- Common information for all users -->
				<div class="flex justify-between items-center mb-3">
					<h2 class="text-lg font-semibold text-indigo-700"><%=user.getFirstname()%>
						<%=user.getLastname()%></h2>
					<span
						class="text-sm bg-indigo-100 text-indigo-600 px-2 py-1 rounded"><%=user.getRole()%></span>
				</div>
				<p class="text-sm text-gray-600 mb-2">
					<i class="bi bi-envelope me-1"></i>
					<%=user.getEmail()%>
				</p>
				<div class="text-sm text-gray-700 space-y-1">
					<p>
						<strong>Gender:</strong>
						<%=user.getGender()%></p>
					<p>
						<strong>Age:</strong>
						<%=user.getAge()%></p>

					<%
					if (role.equals("student")) {
					%>
					<!-- Student-specific fields -->
					<p>
						<strong>Grade:</strong>
						<%=user.getGrade() != null ? user.getGrade() : "N/A"%></p>
					<p>
						<strong>Parent Name:</strong>
						<%=user.getParentName() != null ? user.getParentName() : "N/A"%></p>
					<p>
						<strong>Parent Contact:</strong>
						<%=user.getParentContact() != null ? user.getParentContact() : "N/A"%></p>

					<p>
						<strong>Join Date:</strong>
						<%=user.getJoinDate() != null ? user.getJoinDate().toString() : "N/A"%></p>

					<%
					} else if (role.equals("teacher")) {
					%>
					<!-- Teacher-specific fields -->
					<p>
						<strong>Subject:</strong>
						<%=user.getSubject() != null ? user.getSubject() : "N/A"%></p>
					<p>
						<strong>Qualification:</strong>
						<%=user.getEducationQualification() != null ? user.getEducationQualification() : "N/A"%></p>
					<p>
						<strong>Join Date:</strong>
						<%=user.getJoinDate() != null ? user.getJoinDate().toString() : "N/A"%></p>
					<%
					} else if (role.equals("staff")) {
					%>
					<!-- Staff-specific fields -->
					<p>
						<strong>Type:</strong>
						<%=user.getType() != null ? user.getType() : "N/A"%></p>
					<p>
						<strong>Work Start:</strong>
						<%=user.getDateOfWorkStart() != null ? user.getDateOfWorkStart().toString() : "N/A"%></p>

					<%
					} else if (role.equals("principal") || role.equals("admin")) {
					%>
					<!-- Admin-specific fields (if any) -->
					<p>
						<strong>Join Date:</strong>
						<%=user.getJoinDate() != null ? user.getJoinDate().toString() : "N/A"%></p>
					<%
					}
					%>
				</div>
				<div class="mt-4 flex space-x-2">
					<a href="UserServlet?action=edit&id=<%=user.getId()%>"
						class="bg-blue-500 text-white px-3 py-1 rounded hover:bg-blue-600 text-sm">
						<i class="bi bi-pencil-square"></i> Edit
					</a> <a href="UserServlet?action=delete&id=<%=user.getId()%>"
						onclick="return confirm('Are you sure you want to delete this user?');"
						class="bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600 text-sm">
						<i class="bi bi-trash"></i> Delete
					</a>
				</div>
			</div>
			<%
			}
			} else {
			%>
			<div class="col-span-full text-center text-gray-500">No users
				found.</div>
			<%
			}
			%>
		</div>
	</main>

	<!-- Footer -->
	<footer class="bg-white shadow mt-8">
		<div
			class="max-w-7xl mx-auto px-4 py-4 text-center text-sm text-gray-600">
			&copy; 2025 EduConnect. All rights reserved.</div>
	</footer>

</body>
</html>