package com.notebook.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.notebook.beans.Note;
import com.notebook.models.connection.ConnectionDatabase;
import com.notebook.util.DateUtil;
import java.util.ArrayList;

public class NoteDao {
    private final Connection connection;
    private PreparedStatement statement;
    private ResultSet resultSet;
    private String sql;
    
    public NoteDao() {
        connection = new ConnectionDatabase().getConnection();
    }
    
    public void insertNote(Note note) {
        sql = "INSERT INTO note" +
            "(title, author, text, created) VALUES (?, ?, ?, ?)";
        
        try {
            prepareStatement(sql);
            populateInsertStatement(note);
            executeStatement();
        } catch (SQLException error) {
            throw new RuntimeException(error);
        } finally {
            dispose();
        }
    }
    
    public List<Note> listAllNotes() {
        sql = "SELECT * FROM note";
        
        try {
            prepareStatement(sql);
            executeQuery();
            
            return getPopulatedList();
        } catch (SQLException error) {
            throw new RuntimeException(error);
        } finally {
            dispose();
        }
    }
    
    public List<Note> listAllUserNotes(String author) {
        sql = "SELECT * FROM note WHERE author LIKE ?";
        
        try {
            prepareStatement(sql);
            statement.setString(1, "%" + author + "%");
            executeQuery();
            
            return getPopulatedList();
        } catch (SQLException error) {
            throw new RuntimeException(error);
        } finally {
            dispose();
        }
    }
    
    private void prepareStatement(String sql) throws SQLException {
        statement = connection.prepareStatement(sql);
    }
    
    private List<Note> getPopulatedList() throws SQLException {
        List<Note> notes = new ArrayList<>();
        
        while (resultSet.next()) {
            notes.add(getPopulateNote());
        }
        
        return notes;
    }
    
    private Note getPopulateNote() throws SQLException {
        Note note = new Note();
        
        note.setTitle(resultSet.getString("title"));
        note.setAuthor(resultSet.getString("author"));
        note.setText(resultSet.getString("text"));
        note.setCreated(
            DateUtil.toCalendar(resultSet.getDate("created")));
        
        return note;
    }
    
    private void populateInsertStatement(Note note) throws SQLException {
        statement.setString(1, note.getTitle());
        statement.setString(2, note.getAuthor());
        statement.setString(3, note.getText());
        statement.setDate(4, DateUtil.toSQLDate(note.getCreated()));
    }
    
    private void executeStatement() throws SQLException {
        statement.execute();
    }
    
    private void executeQuery() throws SQLException {
        resultSet = statement.executeQuery();
    }
    
    private void dispose() {
        try {
            if (resultSet != null) 
                resultSet.close();
            
            if (statement != null) 
                statement.close();
            
            if (connection != null) 
                connection.close();
        } catch (SQLException error) {
            throw new RuntimeException(error);
        }
    }
}
