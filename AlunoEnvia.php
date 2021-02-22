<?php

$mensagem = filter_input(INPUT_POST, 'mensagem', FILTER_SANITIZE_STRING);

try {
    $pdo = new PDO("mysql: host=localhost; dbname=chat2;", "root", "");
   
    $aluno = "2";

    $insert = "INSERT INTO conversa(id_usuario_emissor, mensagem, id_usuario_receptor) VALUES(:alun, :sms, :prof)";
    $inserir = $pdo->prepare($insert);
    $inserir->bindValue(":alun", $aluno);
    $inserir->bindValue(":sms", $mensagem);
    $inserir->bindValue(":prof", 1);
    $inserir->execute();
    
    echo "<script>alert('Mensagem Enviada')</script>";
    header("Location: chatAluno.php");

} catch (Execption $th) {
    echo " <script>alert('Erro de Rede.')</script>";
}

