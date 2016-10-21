<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Esempi tag</title>
</head>
<body>
  <h1>Esempi jlst </h1>
  
  
 <p>
 
 <h2>  1. Esempi  tag c: out</h2>
 
 
  <br>
 
<c:set var="Income" scope="session" value="${4000*4}"/>  
Income : <c:out value="${Income}"/>

<br>

<c:out value="${'<tag> , &'}"/>

<br>

 <h2>2. Esempio tag c: set</h2>

<br>

<c:set var="salary" scope="session" value="${2000*2}"/>
Salary : <c:out value="${salary}"/>
  
 <br>
 
<h2> 3. Esempio tag c: remove </h2>
  
 <br>
 
 <c:set var="salary" scope="session" value="${2000*2}"/>
<p>Before Remove Value: <c:out value="${salary}"/></p>
<c:remove var="salary"/>
<p>After Remove Value: <c:out value="${salary}"/></p> 
  
  <br>
  
 <h2> 4. Esempio tag c: if </h2>
  
  <br>
  
  <c:set var="salary" scope="session" value="${2000*2}"/>
<c:if test="${salary > 2000}">
   <p>My salary is: <c:out value="${salary}"/></p>
  </c:if>
   
  <h2> 5. Esempio per stampare una lista di stringhe</h2>
   
  <%
  List<String> lista= new ArrayList<String>();
  
  lista.add("stringa1");
  lista.add("stringa2");
  lista.add("stringa3");
  
  //devo prima dichiarare che la lista che sto usando fa parte della session o della request
  session.setAttribute("lista", lista);
  %>
 
  <c:forEach items="${lista}" var="stringa">
  <c:out value="${stringa}"/>
  </c:forEach>
 
 <br>
 
 <h2> 6. Esempio tag per gestire le eccezioni </h2>
 
 <c:catch var ="catchException">
   <% int x = 5/0;%>
</c:catch>

<c:if test = "${catchException != null}">
   <p>The exception is : ${catchException} <br />
   There is an exception: ${catchException.message}</p>
</c:if>
 
  
</p>





</body>
</html>