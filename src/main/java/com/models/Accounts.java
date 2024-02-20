/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class Accounts {
    private int UserId;
    private String UserName;
    private String Password;
    private String FullName;
    private String Address;
    private int Phone;
    private String Email;
    private boolean IsAdmin;

    public Accounts(int UserId, String UserName, String Password, String FullName, String Address, int Phone, String Email, boolean IsAdmin) {
        this.UserId = UserId;
        this.UserName = UserName;
        this.Password = Password;
        this.FullName = FullName;
        this.Address = Address;
        this.Phone = Phone;
        this.Email = Email;
        this.IsAdmin = IsAdmin;
    }

    @Override
    public String toString() {
        return "Accounts{" + "UserId=" + UserId + ", UserName=" + UserName + ", Password=" + Password + ", FullName=" + FullName + ", Address=" + Address + ", Phone=" + Phone + ", Email=" + Email + ", IsAdmin=" + IsAdmin + '}';
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public int getPhone() {
        return Phone;
    }

    public void setPhone(int Phone) {
        this.Phone = Phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public boolean isIsAdmin() {
        return IsAdmin;
    }

    public void setIsAdmin(boolean IsAdmin) {
        this.IsAdmin = IsAdmin;
    }

    
}
