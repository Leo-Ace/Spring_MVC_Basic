<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<div>
		<h1 class="w-100 text-white text-center bg-info">Student</h1>
		<div class="container">
			<div class="py-4 d-flex align-items-center">
				<a href="product?action=add" class="btn btn-success rounded-0 mr-4">Add
					student</a>
				<form action="product" method="get"
					class="d-flex justify-content-center align-items-center">
					
				</form>
			</div>
			<div>
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>Name</th>
							<th>Gender</th>
							<th>Birthday</th>
							<th>Address</th>
							<th>Phone</th>
							<th>Email</th>
							<th>Status</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ data }" var="st" varStatus="x">
							<tr>
								<td scope="row">${ x }</td>
								<td>${ st.name }</td>
								<td>${ st.gender }</td>
								<td>${ st.birthday }</td>
								<td>${ st.address }</td>
								<td>${ st.phone }</td>
								<td>${ st.email }</td>
								<td>${ st.status == 0 ? "Show" : "Hide" }</td>
								<td class="d-flex align-items-center"><a
									href="product?action=detail&productId=${ prd.productId }"
									class="btn btn-success rounded-0">View</a> <a
									href="product?action=edit&productId=${ prd.productId }"
									class="btn btn-info rounded-0 mx-2">Edit</a> <a
									href="product?action=delete&productId=${ prd.productId }"
									onclick="return confirm('Are you sure?')"
									class="btn btn-danger rounded-0">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>