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
button{
color:darkblue;
bacground-color:lightgreen;
border:0.5px solid black;
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
	<h3>Discount Price Calculation</h3>
	<div class="lang-sel">
	<a target="_self" href="?language=EN">English</a>
	<a target="_self" href="?language=gr">German</a>
	<a target="_self" href="?language=fr">French</a>
	</div>
	<form:form method="get" action="" modelAttribute="product">

		<h2>The discounted price is ${price}</h2>
	</form:form>


</body>
</html>