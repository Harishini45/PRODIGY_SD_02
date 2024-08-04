<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Number Guessing Game</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(to bottom right, #ace1ef, #ffc8f2);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .container {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Number Guessing Game</h1>
        <form action="/guess" method="post">
            <div class="form-group">
                <label for="guess">Enter a number between 1 and 100:</label>
                <input type="number" class="form-control" id="guess" name="guess" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
