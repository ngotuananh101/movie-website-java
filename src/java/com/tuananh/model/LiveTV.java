/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.model;

/**
 *
 * @author ngotu
 */
public class LiveTV {
    int id;
    String title;
    String image;
    String des;
    String link;

    public LiveTV() {
    }

    public LiveTV(int id, String title, String image, String des, String link) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.des = des;
        this.link = link;
    }
    
    public LiveTV(String title, String image, String des, String link) {
        this.title = title;
        this.image = image;
        this.des = des;
        this.link = link;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
    
    
    
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }
    
}
