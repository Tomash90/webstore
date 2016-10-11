<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	<section class = "container">
		<div class = "row">
		<c:forEach items="${products}" var="product">
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<div class="thumbnail">
					<img src="<c:url value="/resource/images/${product.productId}.jpg"></c:url>" alt="image" style="width:100%"/>
					<div class = "caption">
						<h3>${product.name}</h3>
						<p>${product.description}</p>
						<p>${product.unitPrice} PLN</p>
						<p>Liczba sztuk w magazynie: ${product.unitsInStock}</p>
						<p>
							<a href="<spring:url value="/products/product?id=${product.productId}"/>" class="btn btn-primary"><span class="glyphicon-info-sign glyphicon"></span> <spring:message code="products.more"/></a>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</section>