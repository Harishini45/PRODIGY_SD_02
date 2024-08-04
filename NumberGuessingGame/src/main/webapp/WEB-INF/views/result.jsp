<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Number Guessing Game Result</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom right, #ace1ef, #ffc8f2);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .container {
            margin-top: 50px;
        }
        .winner {
            color: green;
            font-size: 2em;
            animation: winnerAnimation 2s infinite;
        }
        @keyframes winnerAnimation {
            0% { transform: scale(1); }
            50% { transform: scale(1.5); }
            100% { transform: scale(1); }
        }
    </style>
</head>
<body>
    <div class="container text-center">
        <h1 class="${resultMessageClass}">${resultMessage}</h1>
        <a href="/" class="btn btn-primary">Try Again</a>
    </div>
</body>
</html>
