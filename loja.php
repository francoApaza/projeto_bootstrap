<!DOCTYPE html>
<htm lang="pt-br">
    <head>
      <meta charset="UTF-8">
      <title> Nossas lojas - Full Stack Eletro </title>   
      <link rel="stylesheet" href="./CSS/estilo.css">
    </head>
    <body>
      
      <!--menu-->
    <?php
        include('menu.html');
    ?>
    
    <h2>Nossas lojas</h2> 
    <hr>

  <main class="container">
    <div class="row">
      

      <div class="col-6 col-md">
      <h3>Rio de Janeiro</h3>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Avenida Presidente Vargas, 5999</a></li>
          <li><p class="text-muted"> 10 &ordm; andar</p></li>
          <li><p class="text-muted">Centro</p></li>
          <li><a class="text-muted" href="#">Tel: (21) 9999-7777 </a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
      <h3>São paulo</h3>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">RAvenida Paulista, 984 </a></li>
          <li><p class="text-muted"> 3 &ordm; andar</p></li>
          <li><p class="text-muted">Jardins</p></li>
          <li><a class="text-muted" href="#">Tel: (11) 9988-88888</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h3>Santa catarina</h3>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Rua Major &Aacute; vila , 370 </a></li>
          <li><p class="text-muted"> 1 &ordm; andar</p></li>
          <li><p class="text-muted">Vila Mariana</p></li>
          <li><a class="text-muted" href="#">Tel: (49) 9999-7777</a></li>
        </ul>
      </div>
    </div>
</main>


    <br>
        <br><br><br><br><br>
        <br><br><br><br><br>
      
        
 </body>

        
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






        <!-- <footer id="rodape">
          <p id="formas_pagamento">Formas de pagamento</p>
          <img src="./imagens/formasdepagamento.png" alt="Formas de pagamento">
          <p>&copy; Recode Pro</p> 
        </footer> -->
</html>