/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ContactUs;

import java.io.Serializable;

/**
 *
 * @author carlosdelcarpio
 */
public class Contact implements Serializable{
    int contactID;
    String name;
    String phoneNumber;
    String email;
    String message;

    public int getContactID() {
        return contactID;
    }

    public void setContactID(int contactID) {
        this.contactID = contactID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "Contact{" + "contactID=" + contactID + ", name=" + name + ", phoneNumber=" + phoneNumber + ", email=" + email + ", message=" + message + '}';
    }
    
    
}
