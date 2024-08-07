/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author My PC
 */
public class New {
    private int id;
    private String image;
    private String tittle;
    private String author;
    private String date;
    private String description;
    private String moredescription;

    public New(int id, String image, String tittle, String author, String date, String description, String moredescription) {
        this.id = id;
        this.image = image;
        this.tittle = tittle;
        this.author = author;
        this.date = date;
        this.description = description;
        this.moredescription = moredescription;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMoredescription() {
        return moredescription;
    }

    public void setMoredescription(String moredescription) {
        this.moredescription = moredescription;
    }

    @Override
    public String toString() {
        return "New{" + "id=" + id + ", image=" + image + ", tittle=" + tittle + ", author=" + author + ", date=" + date + ", description=" + description + ", moredescription=" + moredescription + '}';
    }

   
    
    
}
