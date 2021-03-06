<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</head>
<body class="bg-secondary">
<jsp:include page="/WEB-INF/jsp/nav-bar.jsp"/>
<div class="container-fluid">
    <div class ="col-12" >


        <div class="col-12" style="text-align: center">
            <h1>Todo Items</h1>

        </div>
    </div>
    <table width="800" align="center" style="text-align: center" border="6px solid black">

        <tr class="table-dark">
            <th scope="col"><label>..#..</label></th>
            <th scope="col"><label>TITLE</label></th>
            <th scope="col"><label>COMPLETED</label></th>
            <th scope="col"><label>ACTION</label></th>

        </tr>
        <body style="color: pink">
        <c:forEach var="todo" items="${todos}">
        <tr>

            <th scope="row">${todo.id}</th>
            <td>
                    ${todo.title}
            </td>
            <td>
                    ${todo.completed}
            </td>
            <td>
                <div class="btn-group" role="group" aria-label="Basic example">
                <a class="btn btn-dark" href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
                 <a class="btn btn-dark" href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
                  <a class="btn btn-dark" href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>


                </div>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
