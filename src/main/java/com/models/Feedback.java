/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.sql.Date;

/**
 *
 * @author yentk
 */
public class Feedback {
     private int FeedbackId;
    private String UserName, Content, Type;
    private Date FeedBackDate;
    
    public Feedback(){}

    public Feedback(int FeedbackId, String UserName, String Content, String Type, Date FeedBackDate) {
        this.FeedbackId = FeedbackId;
        this.UserName = UserName;
        this.Content = Content;
        this.Type = Type;
        this.FeedBackDate = FeedBackDate;
    }

    public Feedback(String UserName, String Content, String Type, Date FeedBackDate) {
        this.UserName = UserName;
        this.Content = Content;
        this.Type = Type;
        this.FeedBackDate = FeedBackDate;
    }

    public int getFeedbackId() {
        return FeedbackId;
    }

    public void setFeedbackId(int FeedbackId) {
        this.FeedbackId = FeedbackId;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public String getType() {
        return Type;
    }

    public void setType(String Type) {
        this.Type = Type;
    }

    public Date getFeedBackDate() {
        return FeedBackDate;
    }

    public void setFeedBackDate(Date FeedBackDate) {
        this.FeedBackDate = FeedBackDate;
    }

    @Override
    public String toString() {
        return "Feedback{" + "FeedbackId=" + FeedbackId + ", UserName=" + UserName + ", Content=" + Content + ", Type=" + Type + ", FeedBackDate=" + FeedBackDate + '}';
    }

    

   
    
}
