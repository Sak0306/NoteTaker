<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="format.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your note</h1><br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			
			Note note = (Note)s.get(Note.class, noteId);
		%>
			<form action="UpdateServlet" method="post">
			<input value="<%=note.getId()%>" name="id" type="hidden"/>
			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter here" name="title" value="<%=note.getTitle() %>">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required id="content" placeholder="Enter your content here..."
					class="form-control" style="height:250px;" name="content"><%=note.getContent() %></textarea>
			</div>
		
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your note</button>
			</div>
		</form>
			
	</div>
</body>
</html>