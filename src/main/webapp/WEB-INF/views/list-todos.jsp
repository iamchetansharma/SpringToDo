<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<table class="table table-striped">
		<caption>Your Todos are</caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Date</th>
				<th>Completed</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy"
							value="${todo.targetDate}" /></td>
					<td><a type="button" class="btn btn-primary btn_id"
						id="edit_${todo.id} " href = "${pageContext.request.contextPath}/trueController?value=true&id=${todo.id}" ><span id="true_span">${todo.done}</span></a></td>
					<td><a type="button" class="btn btn-primary btn_edit"
						href="${pageContext.request.contextPath}/update-todo?id=${todo.id}">Edit</a>
						<a type="button" class="btn btn-warning"
						href="${pageContext.request.contextPath}/delete-todo?id=${todo.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<a type="button" class="btn btn-success"
			href="${pageContext.request.contextPath}/add-todo">Add</a>
	</div>
</div>
<%@ include file="common/footer.jspf"%>