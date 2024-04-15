
package app.ctr;
import java.util.List;
import app.model.Agentmodel;

public interface Agent {
    void ajouterAgent(Agentmodel agent);
    void modifierAgent(Agentmodel agent);
    void supprimerAgent(String cin);
    List<Agentmodel> obtenirTousLesAgents();
}
