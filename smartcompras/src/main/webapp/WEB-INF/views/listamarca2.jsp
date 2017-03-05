<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
	<title>Spring Boot + JPA + Datatables</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
	<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	<script src="/js/datatable.js"></script>
</head>


<body>
	<table id="marcaTable" class="display">
      
       <!-- Header Table -->
       <thead>
            <tr>
                <th>Id</th>
				<th>Marca</th>
                
            </tr>
        </thead>
        <tbody>
        <c:forEach var="marca" items="${marcaLista}">
							<tbody>
								<tr>
									<td>${marca.marca}</td>
									<td class="coluna"><button class="btn btn-danger btn-sm"
											type="submit" value=${marca.id } name="removerMarca">
								<i class="fa fa-trash fa-lg" aria-hidden="true"></i></button></td>

								</tr>
							</tbody>
						</c:forEach>
        </tbody>
        <tfoot>
            <tr>
                <th>Id</th>
				<th>Marca</th>
                
            </tr>
        </tfoot>
    </table>
	
</body>
</html>