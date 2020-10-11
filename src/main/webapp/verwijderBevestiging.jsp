<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta charset="UTF-8">
    <title>Verwijder een student</title>
</head>
<body>
<div id="container">
    <div id="content">
    <jsp:include page="header.jsp">
        <jsp:param name="page" value="Verwijder Bevestiging"></jsp:param>
    </jsp:include>
    <main id="container">
        <article>
            <%
                String id = request.getParameter("id");
            %>
            <p>Ben je zeker dat je de persoon met id = <%=id%> wil verwijderen?</p>
            <form action="Controller" method="POST" novalidate="novalidate">
                <input type="hidden" name="command" value="VerwijderBevestiging">
                <input type="hidden" name="id" value="<%=id%>">
                <input type="submit" value="Ja" name="submit">
                <input type="submit" value="Nee" name="submit">
            </form>
        </article>
    </main>
    </div>
</div>
</body>
</html>