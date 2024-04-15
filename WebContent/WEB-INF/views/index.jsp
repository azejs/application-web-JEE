<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
     <title>Gestion des agents</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css">
 
</head>
<body>
<jsp:include page="/WEB-INF/views/menu.jsp" />

<div class="container mt-3">
    <div class="well well-sm">${pageContext.request.contextPath}</div>

    <div class="card mt-3">
        <div class="card-body">
            <h4 class="card-title">Liste des agents</h4>

            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>CIN</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Adresse</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="agent" items="${agents}">
                    <tr>
                        <td>${agent.cin}</td>
                        <td>${agent.nom}</td>
                        <td>${agent.prenom}</td>
                        <td>${agent.adresse}</td>
                        <td>
                            <!-- Bouton pour la modification -->
                             
                           <button type="button" class="btn btn-primary btn-sm " data-toggle="modal" data-target="#editModal${agent.cin}">
				                Modifier
				            </button>
				            <!-- Modal de modification -->
					<div class="modal" id="editModal${agent.cin}">
					    <div class="modal-dialog">
					        <div class="modal-content">
					            <div class="modal-header">
					                <h4 class="modal-title">Modification d'agent</h4>
					                <button type="button" class="close" data-dismiss="modal">&times;</button>
					            </div>
					            <div class="modal-body">
					                <!-- Formulaire de modification -->
					                <form action="${pageContext.request.contextPath}/update" method="post">
					                    <input type="hidden" name="cin" value="${agent.cin}">
					                    
					                    <div class="form-group">
					                        <label for="nom">Nom :</label>
					                        <input type="text" class="form-control" name="nom" value="${agent.nom}" required>
					                    </div>
					                    
					                    <div class="form-group">
					                        <label for="prenom">Prénom :</label>
					                        <input type="text" class="form-control" name="prenom" value="${agent.prenom}" required>
					                    </div>
					                    
					                    <div class="form-group">
					                        <label for="adresse">Adresse :</label>
					                        <input type="text" class="form-control" name="adresse" value="${agent.adresse}" required>
					                    </div>
					                    
					                    <button type="submit" class="btn btn-success btn-block">Modifier</button>
					                </form>
					            </div>
					            <div class="modal-footer">
					                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
					            </div>
					        </div>
					    </div>
					</div>
				            
                            <!-- Bouton pour la suppression avec confirmation -->
                            <button type="button" class="btn btn-danger btn-sm " data-toggle="modal" data-target="#deleteConfirmationModal${agent.cin}">
                                <i class="fa fa-trash"></i> Supprimer
                            </button>
                            <!-- Modal de modification -->
					    <div class="modal" id="editModal${agent.cin}">
					        <div class="modal-dialog">
					            <div class="modal-content">
					                <!-- Le reste du contenu du modal pour la modification -->
					                <div class="modal-header">
					                    <h4 class="modal-title">Modification d'agent</h4>
					                    <button type="button" class="close" data-dismiss="modal">&times;</button>
					                </div>
					                <div class="modal-body">
					                    <!-- Formulaire de modification -->
					                    <form action="${pageContext.request.contextPath}/update" method="post">
					                        <input type="hidden" name="cin" value="${agent.cin}">
					                        <label for="nom">Nom:</label>
					                        <input type="text" name="nom" value="${agent.nom}" required><br>
					                        <label for="prenom">Prénom:</label>
					                        <input type="text" name="prenom" value="${agent.prenom}" required><br>
					                        <label for="adresse">Adresse:</label>
					                        <input type="text" name="adresse" value="${agent.adresse}" required><br>
					                        <button type="submit" class="btn btn-success">Enregistrer</button>
					                    </form>
					                </div>
					                <div class="modal-footer">
					                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
					                </div>
					            </div>
					        </div>
					    </div>
                            <!-- Modal de confirmation de suppression -->
                            <div class="modal" id="deleteConfirmationModal${agent.cin}">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">Confirmation de suppression</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal Body -->
                                        <div class="modal-body">
                                            Êtes-vous sûr de vouloir supprimer cet agent ?
                                        </div>

                                        <!-- Modal Footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                                            <a href="${pageContext.request.contextPath}/delete?cin=${agent.cin}" class="btn btn-danger">Supprimer</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

   <script src="${pageContext.request.contextPath}/resources/bootstrap/jquery-3.3.1.slim.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.js"></script>

</body>
</html>
