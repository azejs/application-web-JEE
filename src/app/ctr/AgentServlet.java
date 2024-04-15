package app.ctr;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.model.Agentmodel;

@WebServlet(name = "Agentservlet", urlPatterns = { "/Agentservlet" })
public class AgentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final AgentController agentController = new AgentController();

    public AgentServlet() {
        super();
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
           doGet(request, response);
    } 
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    String action = request.getServletPath();

    try {
        switch (action) {
            case "/new":
            	NewAgentform(request, response);
                break;
            case "/insert":
            	ajouterAgent(request, response);
                break;
             
            case "/update":
            	modifierAgent(request, response);
                break;
            case "/delete":
            	supprimerAgent(request, response);
                break;
            default:
            	obtenirTousLesAgents(request, response);
                break;
        }
    } catch (Exception ex) {
        throw new ServletException("Une erreur SQL est survenue", ex);
     
   }
 }

   

    private void obtenirTousLesAgents(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Agentmodel> agents = agentController.obtenirTousLesAgents();
        request.setAttribute("agents", agents);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
        dispatcher.forward(request, response);
    }

    private void NewAgentform(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/modal.jsp");
    	        dispatcher.forward(request, response);
    	    }
    private void ajouterAgent(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Récupérez les paramètres nécessaires depuis la requête
        String cin = request.getParameter("cin");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String adresse = request.getParameter("adresse");

        // Créez un objet Agentmodel
        Agentmodel agent = new Agentmodel(cin, nom, prenom, adresse);

        // Appelez la méthode du contrôleur pour ajouter l'agent
        agentController.ajouterAgent(agent);

        // Redirigez vers index.jsp
        response.sendRedirect("agentServlet");
    }

 
	private void modifierAgent(final HttpServletRequest request, final HttpServletResponse response)
            throws ServletException, IOException {
        // Récupérez les paramètres nécessaires depuis la requête
        String cin = request.getParameter("cin");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String adresse = request.getParameter("adresse");

        // Créez un objet Agentmodel
        Agentmodel agent = new Agentmodel(cin, nom, prenom, adresse);

        // Appelez la méthode du contrôleur pour modifier l'agent
        agentController.modifierAgent(agent);

        // Redirigez vers index.jsp
        response.sendRedirect("agentServlet");
    }
 
	private void supprimerAgent(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Récupérez le paramètre nécessaire depuis la requêtey
        String cin = request.getParameter("cin");

        // Appelez la méthode du contrôleur pour supprimer l'agent
        agentController.supprimerAgent(cin);

        // Redirigez vers index.jsp
        response.sendRedirect("agentServlet");
    }


	 
}
