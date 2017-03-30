<%@page import="com.notebook.controllers.NoteController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>

<%@page import="com.notebook.beans.Note"%>

<%
    NoteController noteController = new NoteController();
    List<Note> notes = noteController.listAllNotes();
    
    int cont = 0;
%>

<!DOCTYPE html>
<html>
<head>
    <title>Fatec Notes</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="static/css/bootstrap-theme.min.css" />
    <script src="static/js/bootstrap.min.js"></script>
</head>
<body>
    <%@include file="header.jsp" %>
    
    <h1>List notes</h1>
    
    <hr>
    <% for (Note note : notes) { %>
        <ul>
            <li><%=note.getTitle() %></li>
            <li><%=note.getAuthor() %></li>
            <li><%=note.getCreated().getTime() %></li>
            <li><%=note.getText() %></li>
        </ul>
        <hr>
    <% } %>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>
