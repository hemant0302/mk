<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body {
	font-family: sans-serif;
	margin: 2em;
}

h3 {
	color: darkblue;
}

.lang-sel {
	display: flex;
	margin: 1em 0;
}
#submit,#clear{
color:darkblue;
background-color:lightgreen !important;
border:0.5px solid black !important;
width:unset !important;
}
select{
padding:5px;
border:2px gray solid;
border-radius:6px;
width:100%;
}
input{
padding:5px;
border:2px gray solid;
border-radius:3px;
width:100%;
}
select::-ms-expand {
background-color:red;
}
.lang-sel a {
	margin: 0 1em;
}
tr{
height:3em;
}
</style>
<body>
	<h2>Discount Price Calculation</h2>
	<div class="lang-sel">
	<a target="_self" href="?language=EN">English</a>
	<a target="_self" href="?language=gr">German</a>
	<a target="_self" href="?language=fr">French</a>
	</div>
	<form:form method="get" action="calculateDiscountedPrice" modelAttribute="product">

		<table>
			<tr>
				<td id="id1"><label for="productPrice"><spring:message
							code="label.productPrice" /></label></td>
				<td><form:input name="productPrice" path="productPrice" /><form:errors path="productPrice" /></td>
			</tr>
			<tr>
				<td id="id2"><label for="prodyctType"> <spring:message
							code="label.prodyctType" />
				</label></td>
				<td><form:select name="productType" items="${productTypeList}"
						path="productType" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.submit" var="submitText"  /> <input id="submit"
					type="submit" value="${submitText}" name="submit" /></td>
				<td><input type="reset" value="Clear" id="clear" /></td>
			</tr>
		</table>
	</form:form>


</body>
</html>