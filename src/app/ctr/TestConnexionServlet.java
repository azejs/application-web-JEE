 package app.ctr;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.model.Connexion;

@WebServlet("/TestConnexionServlet")
public class TestConnexionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            Connection conn = Connexion.getConnection(); // Utilisez la méthode correcte de votre classe de connexion

            if (conn != null) {
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Test de Connexion</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>La connexion à la base de données a réussi !</h1>");
                out.println("</body>");
                out.println("</html>");
            } else {
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Test de Connexion</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>La connexion à la base de données a échoué !</h1>");
                out.println("</body>");
                out.println("</html>");
            }

        } finally {
            out.close();
        }
    }
}
