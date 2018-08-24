<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp"%>

<section class="content">
	<div class="row">
		<div class="col-md-12">	
			<div class="box">
			
				<div class="box-header with-border">
					<h3 class="box-title">LIST ALL PAGE</h3>
				</div>
				
				<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th style="width:10px">BNO</th>
							<th>TITLE</th>
							<th>WRITER</th>
							<th>REGDATE</th>
							<th style="width:40px">VIEWCNT</th>
						</tr>						
						<c:forEach items="${list }" var="boardVO">
							<tr>
								<td>${boardVO.bno }</td>
								<td><a href='/board/read?bno=${boardVO.bno }'>${boardVO.title }</a></td>
								<td>${boardVO.writer }
								<td><fmt:formatDate pattern="yyyy-MMM-dd HH:mm" value="${boardVO.regdate }" /></td>
								<td><span class="badge bg-red">${boaardVO.viewcnt }</span></td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<div class="box-footer">Footer</div>

			</div>
		</div>
	</div>
</section>

<script>
	var result = '${result}';

	console.log(result);
</script>

<%@include file="../include/footer.jsp"%>
