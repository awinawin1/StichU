

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <h1>Selamat Datang </h1>
    List Pengguna :
    {% for users in users %}
    <br>-
    {{ users.username}}
    {% endfor %}

        
</body>
</html>