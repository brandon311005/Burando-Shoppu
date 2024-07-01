/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author HP PROBOOK 450 G1
 */
public class Employe {
    private String Login;
    private String Nom;
    private String Prenom;
    private String Role;
    private String Password;

    public Employe() {
    }

    public Employe(String Login, String Nom, String Prenom, String Role, String Password) {
        this.Login = Login;
        this.Nom = Nom;
        this.Prenom = Prenom;
        this.Role = Role;
        this.Password = Password;
    }

    public String getLogin() {
        return Login;
    }

    public String getNom() {
        return Nom;
    }

    public String getPrenom() {
        return Prenom;
    }

    public String getRole() {
        return Role;
    }

    public String getPassword() {
        return Password;
    }

    public void setLogin(String Login) {
        this.Login = Login;
    }

    public void setNom(String Nom) {
        this.Nom = Nom;
    }

    public void setPrenom(String Prenom) {
        this.Prenom = Prenom;
    }

    public void setRole(String Role) {
        this.Role = Role;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
    
    
}
