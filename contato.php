<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $database = "fseletro";

  // Criando a conexão 
  $conn = mysqli_connect($servername, $username, $password, $database);

  // Verificando a conexão 
  if (!$conn) {
    die("A conexão ao BD falhou : " . mysqli_connect_error());
  }
    //ligação do  cite com o banco de dados enviando informação 

  if(isset($_POST['nome']) && isset($_POST['msg'])){
    $nome = $_POST['nome'];
    $msg = $_POST['msg'];

    $sql = "insert into comentarios (nome, msg ) values('$nome', '$msg')";
    $result = $conn->query($sql);
  }

?>


<!DOCTYPE html>
<htm lang="pt-br">
    <head>
      <meta charset="UTF-8">
      <title> Contato - Full Stack Eletro </title>  
      <link rel="stylesheet" href="./CSS/estilo.css">
    </head>
    <body>
      
      <!-- menu-->

    <?php
        include('menu.html');
    ?>
     
       <h2>Fale Conosco</h2>
       <hr><br><br>
     



<!-- tabela  aplicada -->
          
<div class="container-fluid text-dark">
        <div class="row">
            <div class="col-sm-6">  <td width="50%" align="center">
              <img src="./imagens/E-mail.png" width="40px">
              <font face="arial" size="4">  Contato@fullstackeletro.com </font>        
            </td> 
          </div>
            <div class="col-sm-6" > <td width="50%" align="center">
                <img src="./imagens/whatspp.png" width="50px">
              <font face="arial" size="4"> (11) 99999-5555</font>
            </td>
          </div>
        </div>
  </div>

<br><br>


<div class="container">
  
  <form method="post" action="" class="contato">
    <h4> Nome: </h4>
    <input type="text" name="nome" style="width:400px"  placeholder="escreva seu nome aqui:">
    <h4> Mensagem:</h4>
    <input type="text" name="msg"  style="width:400px" placeholder="Deixe sua mensagem aqui: " ></input>
    <br>
    <input class="bg-primary" type="submit" name="submit" value="enviar">
  </form>
</div>
  <br><br>
  
       <!-- exibe comentarios do banco de dados  no site -->

  <section class="container">
    
  <?php
              $sql = "select * from comentarios";
              $result = $conn->query($sql);
              
              if($result->num_rows > 0){
                while($rows = $result->fetch_assoc()){
                  echo "Data: ", $rows['data'],"<br>";
                  echo "Nome: ", $rows['nome'],"<br>";
                  echo "Mensagem: ", $rows['msg'],"<br>";    
                  echo "<hr>";      
                }
              }else{
                echo "Nenhum comentário ainda!";
              }
              ?>
</section>    



       <br>
       <br><br><br><br><br>
       <br><br><br><br><br>
      
       

<footer class="footer mt-auto card-center">
    <div class="card text-center">
        <div class="card-body">
            <p id="formas_pagamento">formas de pagamento:</p>    
            <img src="./imagens/formasdepagamento.png" alt="Formas de pagamento">   
        </div>
        <div class="card-footer text-muted">
            <p>&copy; Recode Pro</p>
        </div>
    </div>
</footer>



<!-- 
        <footer id="rodape">
          <p id="formas_pagamento">Formas de pagamento</p>
          <img src="./imagens/formasdepagamento.png" alt="Formas de pagamento"><br>
          <img src="./imagens/esquilo.jpg" alt="esquilo asustado" width="30px">
          <p>&copy; Recode Pro</p> 
        </footer> -->
</html>