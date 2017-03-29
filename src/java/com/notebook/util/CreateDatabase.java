package com.notebook.util;

import com.notebook.models.connection.ConnectionDatabase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CreateDatabase {
    
    public static void main(String[] args) {
        Connection connection = new ConnectionDatabase().getConnection();
        PreparedStatement statement = null;
        String sql = "CREATE TABLE note (" +
            "id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT," +
            "title VARCHAR(255) NOT NULL," +
            "author VARCHAR(255) NOT NULL," +
            "text VARCHAR(255) NOT NULL," +
            "created DATETIME NOT NULL)";
        
        try {
            statement = connection.prepareStatement(sql);
            statement.execute();
        } catch (SQLException error) {
            System.err.println("Error creating database: " + error.getMessage());
        } finally {
            System.out.println("Database created");
            
            try {
                if (statement != null) 
                    statement.close();

                if (connection != null) 
                    connection.close();
            } catch (SQLException error) {
                System.err.println("Error closing connections: " + error.getMessage());
            }
        }
    }
}
