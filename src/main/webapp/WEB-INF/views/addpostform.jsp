<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-oqNR7OoyWfNLwXpu1EGSKJNtOjJuyGGkBRWMcjj7cG2iPy1BUKd3bI6IIZFZzegY" crossorigin="anonymous"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>Add</title>
    <style>
        body {
            background-color: black;
        }

        .navbar-brand strong {
            background-color: white;
            padding: 5px;
            border-radius: 5px;
            color: black;
        }

        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }




        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }

        .navbar-toggler {
            background-color: black;
            padding: 5px;
            border-radius: 5px;
            color: black;
        }

        .bg-dark {
            background-color: rgb(237, 148, 39)!important;
            border: 5px solid black;
        }

        #goods {
            background-color: rgb(255, 153, 0);
            max-width: 50%;
            margin: auto;
        }

        hr {
            border: none;
            border: 5px double blue;
        }

        .jumbotron {
            margin-bottom: 20px;
            margin: 0 10%;
        }

        form table {
            margin: auto;
        }

        form td {
            padding: 10px;
        }
    </style>


    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deletepost/'+id;
        }
    </script>
</head>
<body>

<div class="navbar navbar-dark bg-dark shadow-sm" style="background-color: skyblue">
    <div class="container d-flex justify-content-between" >
        <a href="posts" class="navbar-brand d-flex align-items-center" >
            <strong>Handong Global Used market</strong>
        </a>
        <div class="d-flex">
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
            <span> Menu </span>
        </button>
    </div>
</div>
</header>



<section class="jumbotron text-center">
    <h1>Add New Post</h1>
    <form action="addpost" method="post">
        <table>
            <tr>
                <td>Category:</td>
                <td>
                    <select name="category">
                        <option value="book">책</option>
                        <option value="cloths">의류</option>
                        <option value="etc">기타 등등</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Title:</td>
                <td><input type="text" name="title"/></td>
            </tr>
            <tr>
                <td>Writer:</td>
                <td><input type="text" name="writer"/></td>
            </tr>
            <tr>
                <td>Content:</td>
                <td><textarea cols="50" rows="5" name="content"></textarea></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price"/></td>
            </tr>
            <tr>
                <td>Contact</td>
                <td><input type="text" name="contact" /></td>
            </tr>
            <tr>
                <td>Select a location:</td>
                <td>
                    <input type="checkbox"  value="bethel"> 벧엘
                    <input type="checkbox"  value="oh"> 오석
                    <input type="checkbox"  value="nth"> 뉴턴홀
                </td>
            </tr>
            <tr>
                <td><a href="posts">View All Records</a></td>
                <td><input type="submit" value="Add Post"/></td>
            </tr>
        </table>
    </form>
</section>




</body>
</html>