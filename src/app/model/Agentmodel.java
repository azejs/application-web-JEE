package app.model;
public class Agentmodel {
    private String cin;
    private String nom;
    private String prenom;
    private String adresse;

    // Constructeur par d�faut
    public Agentmodel() {
    }

    // Constructeur avec param�tres
    public Agentmodel(String cin, String nom, String prenom, String adresse) {
        this.cin = cin;
        this.nom = nom;
        this.prenom = prenom;
        this.adresse = adresse;
    }

    // Getters et setters
    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    // Vous pouvez �galement ajouter d'autres m�thodes selon vos besoins
}
