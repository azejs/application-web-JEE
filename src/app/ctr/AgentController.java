package app.ctr;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.model.Agentmodel;
import app.model.Connexion; // Importez votre classe Connexion

public class AgentController implements Agent {

    @Override
    public void ajouterAgent(Agentmodel agent) {
        try (Connection connexion = Connexion.getConnection()) {
            String requete = "INSERT INTO agents (cin, nom, prenom, adresse) VALUES (?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connexion.prepareStatement(requete)) {
                preparedStatement.setString(1, agent.getCin());
                preparedStatement.setString(2, agent.getNom());
                preparedStatement.setString(3, agent.getPrenom());
                preparedStatement.setString(4, agent.getAdresse());
                preparedStatement.executeUpdate();
            }
            System.out.println("Agent ajouté avec succès");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifierAgent(Agentmodel agent) {
        try (Connection connexion = Connexion.getConnection()) {
            String requete = "UPDATE agents SET nom=?, prenom=?, adresse=? WHERE cin=?";
            try (PreparedStatement preparedStatement = connexion.prepareStatement(requete)) {
                preparedStatement.setString(1, agent.getNom());
                preparedStatement.setString(2, agent.getPrenom());
                preparedStatement.setString(3, agent.getAdresse());
                preparedStatement.setString(4, agent.getCin());
                preparedStatement.executeUpdate();
            }
            System.out.println("Agent modifié avec succès");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void supprimerAgent(String cin) {
        try (Connection connexion = Connexion.getConnection()) {
            String requete = "DELETE FROM agents WHERE cin=?";
            try (PreparedStatement preparedStatement = connexion.prepareStatement(requete)) {
                preparedStatement.setString(1, cin);
                preparedStatement.executeUpdate();
            }
            System.out.println("Agent supprimé avec succès");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Agentmodel> obtenirTousLesAgents() {
        List<Agentmodel> agents = new ArrayList<>();
        try (Connection connexion = Connexion.getConnection()) {
            String requete = "SELECT * FROM agents";
            try (PreparedStatement preparedStatement = connexion.prepareStatement(requete)) {
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    while (resultSet.next()) {
                        Agentmodel agent = new Agentmodel();
                        agent.setCin(resultSet.getString("cin"));
                        agent.setNom(resultSet.getString("nom"));
                        agent.setPrenom(resultSet.getString("prenom"));
                        agent.setAdresse(resultSet.getString("adresse"));
                        agents.add(agent);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return agents;
    }
}
