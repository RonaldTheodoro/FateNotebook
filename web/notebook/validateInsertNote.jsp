<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.Calendar"%>

<%@page import="com.notebook.beans.Note" %>
<%@page import="com.notebook.controllers.NoteController" %>

<%
    Note note = new Note(
        request.getParameter("title"),
        request.getParameter("author"),
        request.getParameter("textnote"), 
        Calendar.getInstance()
    );
    NoteController noteController = new NoteController();
    noteController.insertNote(note);
    
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
    <p><%=note.getTitle() %></p>
    <p><%=note.getAuthor() %></p>
    <p><%=note.getCreated().getTime() %></p>
    <p><%=note.getText() %></p>
</body>
</html>
