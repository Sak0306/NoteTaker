<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="format.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid p-0">
		<%@include file="navbar.jsp"%>
		<br>

		<h1>Please fill your note</h1>
		<br>
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter here" name="title">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required id="content" placeholder="Enter your content here..."
					class="form-control" style="height:250px;" name="content"></textarea>
			</div>
		
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>


	</div>

</body>
</html>