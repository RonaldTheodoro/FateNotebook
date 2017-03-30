<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

    <h1>Add Note</h1>
    
    <form name="insertNote" action="validateInsertNote.jsp" method="POST">
        <p><label for="title">Title</label></p>
        <p><input id="title" name="title" type="text"></p>
        <p><label for="author">Author</label></p>
        <p><input id="author" name="author" type="text"></p>
        <p><label for="textnote">Note</label></p>
        <p>
            <textarea id="textnote" name="textnote" rows="10" cols="20">
            
            </textarea>
        </p>
        <p><input type="submit" value="Save note"></p>
    </form>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>
