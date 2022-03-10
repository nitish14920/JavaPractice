<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
<head>
    <title>Student Registration form</title>
</head>
<body>
    <form:form action="processForm" modelAttribute="student">
        First name: <form:input path="firstName" />
        <br>
        Last name: <form:input path="lastName" />
        <br>
        Country:
        <form:select path="country">
            <form:options items="${student.countryOptions}" />
        </form:select>
        <br>
        Favorite Language:
        Java <form:radiobutton path="favoriteLanguage" value="Java"  />
        C#<form:radiobutton path="favoriteLanguage" value="C#"  />
        PHP<form:radiobutton path="favoriteLanguage" value="PHP"  />
        Ruby<form:radiobutton path="favoriteLanguage" value="Ruby"  />
        <br>
        Which OS you hava used?
        Linux <form:checkbox path="operatingSystems" value="Linux"/>
        MAC OS <form:checkbox path="operatingSystems" value="MAC OS"/>
        Windows <form:checkbox path="operatingSystems" value="Windows"/>
        <br>
        <input type="submit" value="Submit"/>
    </form:form>
</body>
</html>
