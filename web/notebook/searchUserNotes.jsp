<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <a href="searchUserNotes.jsp">Search User Notes</a>
        <hr>
    </header>
    
    <form name="searchUserNotes" action="validateSearchUserNotes.jsp" method="POST">
        <p><label for="author">Author</label></p>
        <p><input id="author" name="author" type="text"></p>
        <p><input type="submit" value="Search notes"></p>
    </form>
</body>
</html>
