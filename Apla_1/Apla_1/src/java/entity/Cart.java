/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author My PC
 */
public class Cart extends Product {
    private int quantity;

    public Cart() {
        super(0, null, null, null, null);
    }

    public Cart(int quantity, int id, String name, String image, Double price, String description) {
        super(id, name, image, price, description);
        this.quantity = quantity;
    }

    

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
    
  
}
