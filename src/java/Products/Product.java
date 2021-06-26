/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Products;

import java.io.Serializable;

/**
 * @author carlosdelcarpio
 */
public class Product implements Serializable {
    private int ID;
    private String name;
    private Double price;
    private String imagePath; 

    
    //Noarg constructor
    public Product() {
        this.ID = 0;
        this.name = "";
        this.price = 0.00;
        this.imagePath = "";
    }
    
    
    //Setters and getters
    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    
    //toString function
    @Override
    public String toString() {
        return "Product{" + "ID=" + ID + ", name=" + name + ", price=" + price + ", imagePath=" + imagePath + '}';
    }
}
