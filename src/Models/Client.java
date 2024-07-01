/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author HP PROBOOK 450 G1
 */
public class Client {
    private int idclt;
    private String nom;
    private String prenom;
    private int contact;

    public Client() {
    }

    public Client(int idclt, String nom, String prenom, int contact) {
        this.idclt = idclt;
        this.nom = nom;
        this.prenom = prenom;
        this.contact = contact;
    }

    public int getIdclt() {
        return idclt;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public int getContact() {
        return contact;
    }

    public void setIdclt(int idclt) {
        this.idclt = idclt;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setContact(int contact) {
        this.contact = contact;
    }

    @Override
    public String toString() {
        return "" + "" + idclt + "-" + nom + " " + prenom ;
    }
    
}
