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
    private String username;
    private String email;
    private String message;
    
    public Feedback(){}

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public Feedback(String username, String email, String message) {
        this.username = username;
        this.email = email;
        this.message = message;
    }

    @Override
    public String toString() {
        return "Feedback{" + "username=" + username + ", email=" + email + ", message=" + message + '}';
    }
    
    
}
