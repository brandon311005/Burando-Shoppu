/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author HP PROBOOK 450 G1
 */
public class Article {
    private String Id;
    private String nom;
    private float prixUn;
    private int qte_stock;
    private String Idcart;

    public Article() {
    }

    public Article(String Id, String nom, float prixUn, int qte_stock, String Idcart) {
        this.Id = Id;
        this.nom = nom;
        this.prixUn = prixUn;
        this.qte_stock = qte_stock;
        this.Idcart = Idcart;
    }
    public String getId() {
        return Id;
    }

    public String getNom() {
        return nom;
    }

    public float getPrixUn() {
        return prixUn;
    }

    public int getQte_stock() {
        return qte_stock;
    }

    public String getIdcart() {
        return Idcart;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrixUn(float prixUn) {
        this.prixUn = prixUn;
    }

    public void setQte_stock(int qte_stock) {
        this.qte_stock = qte_stock;
    }

    public void setIdcart(String Idcart) {
        this.Idcart = Idcart;
    }

    @Override
    public String toString() {
        return " " + Id + " " + nom + " " + prixUn ;
    }
    
    
}
