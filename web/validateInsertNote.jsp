<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.Calendar"%>

<%@page import="com.notebook.beans.Note" %>
<%@page import="com.notebook.controllers.NoteController" %>

<%
    Note note = new Note();
    note.setTitle(request.getParameter("title"));
    note.setAuthor(request.getParameter("author"));
    note.setText(request.getParameter("textnote"));
    note.setCreated(Calendar.getInstance());
    
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
    
    <link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="static/css/bootstrap-theme.min.css" />
    <script src="static/js/bootstrap.min.js"></script>
</head>
<body>
    <%@include file="header.jsp" %>
    
    <h1>Detail note</h1>
    
    <p><%=note.getTitle() %></p>
    <p><%=note.getAuthor() %></p>
    <p><%=note.getCreated().getTime() %></p>
    <p><%=note.getText() %></p>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>
