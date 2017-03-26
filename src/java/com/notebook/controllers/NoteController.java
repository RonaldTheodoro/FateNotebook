package com.notebook.controllers;

import com.notebook.beans.Note;
import com.notebook.models.NoteDao;

public class NoteController {
    private final NoteDao noteDao;

    public NoteController() {
        this.noteDao = new NoteDao();
    }
    
    public void insertNote(Note note) {
        noteDao.insertNote(note);
    }
}
