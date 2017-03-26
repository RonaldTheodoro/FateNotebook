package com.notebook.beans;

import java.util.Calendar;

public class Note {
    private String title;
    private String author;
    private String text;
    private Calendar created;

    public Note(String title, String author, String text, Calendar created) {
        this.title = title;
        this.author = author;
        this.text = text;
        this.created = created;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Calendar getCreated() {
        return created;
    }

    public void setCreated(Calendar created) {
        this.created = created;
    }
}
