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
    
    <div class="container theme-showcase" role="main">
        <h1>Add Note</h1>
    
        <form class="form" name="insertNote" action="validateSearchUserNotes.jsp" method="POST">
            <div class="form-group">
                <label for="author">Author</label>
                <input id="author" name="author" type="text" class="form-control">
            </div>
            <input type="submit" class="btn btn-primary" value="Search notes">
        </form>
    </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>
