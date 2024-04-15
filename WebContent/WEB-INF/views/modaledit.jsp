 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Gestion des agents</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css">
   
</head>

<body>
    <jsp:include page="/WEB-INF/views/menu.jsp" />
    <br>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
            
                  <c:if test="${agent.cin != null}">
                             <form id="modifier" action="<%=request.getContextPath()%>/update" method="post">
                   </c:if>
                  <c:if test="${agent.cin == null}">
                              <form id="supprimer" action="<%=request.getContextPath()%>/insert" method="post">
                  </c:if>
                    <caption>
                        <h4>
                            <c:if test="${agent.cin != null}">
                                Modifier l'agent
                            </c:if>
                            <c:if test="${agent.cin == null}">
                                Ajouter nouvel agent
                            </c:if>
                        </h4>
                    </caption>

                    <c:if test="${agent != null}">
                        <input type="hidden" name="id" value="<c:out value='${agent.id}' />" />
                    </c:if>

                    <fieldset class="form-group">
                        <label>CIN</label>
                        <input type="text" value="<c:out value='${agent.cin}' />" class="form-control" name="cin"
                            required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Nom</label>
                        <input type="text" value="<c:out value='${agent.nom}' />" class="form-control" name="nom"
                            required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Prénom</label>
                        <input type="text" value="<c:out value='${agent.prenom}' />" class="form-control" name="prenom"
                            required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Adresse</label>
                        <input type="text" value="<c:out value='${agent.adresse}' />" class="form-control" name="adresse"
                            required="required">
                    </fieldset>

                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#confirmationModal">
                        Enregistrer
                    </button>

                    <!-- Modal -->
                    <div class="modal" id="confirmationModal">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Confirmation</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <!-- Modal Body -->
                                <div class="modal-body">
                                    Êtes-vous sûr de vouloir enregistrer les données ?
                                </div>

                                <!-- Modal Footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                                    <button type="submit" class="btn btn-success">Enregistrer</button>
                                </div>

                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>

   <script src="${pageContext.request.contextPath}/resources/bootstrap/jquery-3.3.1.slim.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.js"></script>
</body>

</html>
 