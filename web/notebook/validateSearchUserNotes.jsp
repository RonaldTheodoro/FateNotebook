<%@page import="com.notebook.controllers.NoteController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>

<%@page import="com.notebook.beans.Note"%>

<%
    String author = request.getParameter("author");
    
    NoteController noteController = new NoteController();
    List<Note> notes = noteController.listAllUserNotes(author);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Fatec Notes</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <header>
        <hr>
        <a href="../index.jsp">Home</a>
        <a href="insertNote.jsp">Add Note</a>
        <a href="listNotes.jsp">Show Notes</a>
        <hr>
    </header>
    
    <h1>List notes</h1>
    
    <hr>
    <% if (notes.size() > 0) { %>
        <% for (Note note : notes) { %>
            <ul>
                <li><%=note.getTitle() %></li>
                <li><%=note.getAuthor() %></li>
                <li><%=note.getCreated().getTime() %></li>
                <li><%=note.getText() %></li>
            </ul>
            <hr>
        <% } %>
    <% } else { %>
        <p>This user do not have notes yet.</p>
    <% } %>
</body>
</html>
