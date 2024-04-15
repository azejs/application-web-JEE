 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Mon Projet Bootstrap</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <style>
        /* Ajoutez des styles personnalisés ici */
        body {
            background-color: #f8f9fa; /* Couleur de fond */
            color: #495057; /* Couleur du texte */
        }

        .navbar {
            background-color: #007bff; /* Couleur de la barre de navigation */
        }

        .navbar-light .navbar-nav .nav-link {
            color: #ffffff; /* Couleur des liens de navigation */
        }

        .navbar-light .navbar-toggler-icon {
            background-color: #ffffff; /* Couleur de l'icône du bouton de navigation */
        }

        .container {
            margin-top: 20px; /* Marge supérieure pour séparer le contenu de la barre de navigation */
        }

        /* Style pour le logo */
        .navbar-brand img {
            width: 100px; /* Largeur du logo */
            height: auto; /* Hauteur automatique pour maintenir les proportions */
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="navbar-brand">
        <img src="${pageContext.request.contextPath}/resources/images/logo.png">
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
        
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/agentServlet">Agents</a>
            </li>
            <li class="nav-item">
               <a  class="nav-link" href="<%=request.getContextPath()%>/new" >Ajouter nouveau</a>
            </li>
            <!-- Ajoutez d'autres éléments du menu selon vos besoins -->
        </ul>
    </div>
</nav>

<script src="${pageContext.request.contextPath}/resources/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
 