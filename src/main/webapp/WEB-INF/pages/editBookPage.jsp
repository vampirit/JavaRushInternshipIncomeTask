<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HP pavilion
  Date: 15.10.2017
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit book</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="../../resources/css/add-edit-find.css"/>"/>
</head>
<body>

    <c:url value="/books/editBookLogic" var="editBookLogic"/>

    <div class="center header">
        Edit book: ${book.title}
    </div>
    </br>
    <div class="form">
        <spring:form commandName="book" method="post" action="${editBookLogic}">

        <table>
            <thead>
                <tr>
                    <td width="10%"></td>
                    <td width="100%"></td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <label> ID </label>
                    </td>
                    <td>
                        <spring:input path="id" readonly="true" placeholder="${book.id}" cssClass="inputData"/>
                    </td>

                </tr>

                <tr>
                    <td>
                        <label> Автор </label>
                    </td>
                    <td>
                        <spring:input path="author" readonly="true" placeholder="${book.author}" cssClass="inputData"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label> Название </label>
                    </td>
                    <td>
                        <spring:input path="title" placeholder="${book.title}" cssClass="inputData"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label> Описание </label>
                    </td>
                    <td>
                        <spring:textarea path="description" placeholder="${book.description}" cssClass="inputData"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label> ISBN </label>
                    </td>
                    <td>
                        <spring:input path="isbn" placeholder="${book.isbn}" cssClass="inputData" type="number"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label> Год издания </label>
                    </td>
                    <td>
                        <spring:input path="printYear" placeholder="${book.printYear}" cssClass="inputData" type="number"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label> Прочитана? </label>
                    </td>
                    <td>
                        <spring:checkbox path="readAlready" cssClass="inputData"/>
                    </td>
                </tr>
            </tbody>
        </table>

            <spring:button>Сохранить изменения</spring:button>

            </spring:form>

    </div>

</body>
</html>