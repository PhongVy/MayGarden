/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author yentk
 */
public class Feedback {
    private String Email;
    private String Name;
    private String Description;

    public Feedback() {
    }

    public Feedback(String Email, String Name, String Description) {
        this.Email = Email;
        this.Name = Name;
        this.Description = Description;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    @Override
    public String toString() {
        return "Feedback{" + "Email=" + Email + ", Name=" + Name + ", Description=" + Description + '}';
    }
    
    
    
}
