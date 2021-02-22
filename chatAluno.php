<!Doctype <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Chat Aluno</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/css/index.css">
    <script src="main.js"></script>
</head>
<body>
    <?php


$pdo = new PDO("mysql: host=localhost; dbname=chat2;", "root", "");

$query = "SELECT cv.id_conversa, alun.nome AS al , cv.mensagem, us.nome, cv.data FROM conversa as cv JOIN usuario alun ON alun.id = cv.id_usuario_emissor JOIN usuario AS us ON us.id = cv.id_usuario_receptor ORDER BY cv.data ASC";
$select = $pdo->prepare($query);
$select->execute();

    foreach ($select as $show) {

        echo " <div class='box'><a href='#'  class='nome' > ".$show['al']."</a>";
        echo "<p>".$show['mensagem']."</p>";
        echo "Data de Envio: ".$show['data']." </div><hr>";
    }


?>
 <h2>Aluno</h2>
    <form method="post" action="AlunoEnvia.php">
   
    <textarea name="mensagem"></textarea><br>
    <button>Enviar</button>
   
</form>


<a href="index.php"><button class="button" ><span>Home</span></button></a>
</body>
</html>