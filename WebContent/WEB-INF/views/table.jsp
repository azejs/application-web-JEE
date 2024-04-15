<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Mon Projet Bootstrap</title>
    <!-- Assurez-vous que le chemin vers le fichier CSS Bootstrap est correct -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <h2>Votre Table Bootstrap</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Colonne 1</th>
            <th>Colonne 2</th>
            <th>Colonne 3</th>
            <!-- Ajoutez autant de colonnes que nécessaire -->
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Donnée 1</td>
            <td>Donnée 2</td>
            <td>Donnée 3</td>
            <!-- Ajoutez autant de cellules que nécessaire -->
        </tr>
        <!-- Ajoutez autant de lignes que nécessaire -->
        </tbody>
    </table>
</div>

<!-- Assurez-vous que le chemin vers les fichiers JavaScript Bootstrap est correct -->
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
