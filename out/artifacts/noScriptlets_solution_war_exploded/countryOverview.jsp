<%@page import="domain.model.Country" %>
<%@page import="java.util.Collection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/sample.css">
    <meta charset="UTF-8">
    <title>Countries</title>
</head>
<body>
<header role="banner">
    <img alt="Toscane" src="images/toscaneRibbon.jpg">
</header>

<main id="container">
    <p>
        <a href="index.html">Home</a>
    </p>
    <article>
        <h1>Countries</h1>
        <c:if test="${popular != null}">
            <p>
                The most popular country is
                    ${popular.name}
            </p>
        </c:if>
        <c:if test="${countries != null}">
            <table id="overview">
                <tr>
                    <th>Name</th>
                    <th>Capital</th>
                    <th class="getal">Inhabitants</th>
                    <th class="getal">Votes</th>
                </tr>
                <c:forEach var="country" items="${countries}">
                    <tr>
                        <td>${country.name}</td>
                        <td
                            ${country.capital}</td>
                        <td class="getal">${country.numberInhabitants}</td>
                        <td class="getal">${country.votes}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <p>
            <a href="countryForm.jsp">Add new country</a>
        </p>
    </article>
</main>
</body>
</html>