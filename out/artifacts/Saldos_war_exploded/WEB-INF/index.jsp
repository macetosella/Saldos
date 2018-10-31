<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Jony Empire</title>

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/scrolling-nav.css" rel="stylesheet">
    <link href="../css/styles.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Jony Empire: Digital Money Exchange</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">Exchange</a>
                </li>
                <li class="nav-item" id="solicitud" style="display: none;">
                    <a class="nav-link js-scroll-trigger" href="#services">Solicitud</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#contact">Contacto</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<section id="about" class="fondo">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mx-auto">
                <div class="row">
                    <div class="col-lg-3 mx-auto">
                        <!-- neteller ; skrill ; payoner ; amazon gifcard ; bitcoin -->
                        <div class="row"><strong>PASO 1 </strong><img src="../img/help_blue.png" height="23"></div>
                        <div class="row"
                             style="background-color: #55AAFF; color: white; font-size: 25px;border-top-left-radius: 0px;border-top-right-radius: 0px;">
                            <label style="margin-left: 105px;margin-top: 5px;"><strong>Env&iacute;as</strong></label>
                        </div>
                        <div class="row" style="background-color: #EAEAE9; border-bottom: #DAD8D8 solid 1px;">
                            <input type="text" maxlength="7" size="20" id="origen" class="input-element-origen"
                                   value="25">
                            <strong style="color: #878889">&nbsp&nbspUSD</strong>
                        </div>
                        <div id="monederos-de-origen">
                            <div class="row centrador monederos-origen" id="Neteller-envio">
                                <img class="imagen" src="../img/neteller.medium.png">
                            </div>
                            <div class="row centrador monederos-origen" id="Skrill-envio">
                                <img class="imagen" src="../img/skrill.medium.png">
                            </div>
                            <div class="row centrador monederos-origen" id="Payoneer-envio">
                                <img class="imagen" src="../img/payoneer.medium.png">
                            </div>
                            <div class="row centrador monederos-origen" id="Bitcoin-envio">
                                <img class="imagen" src="../img/bitcoin.medium.png">
                            </div>
                            <div class="row centrador monederos-origen" id="Amazon-envio">
                                <img class="imagen" src="../img/amazon.medium.png">
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-3 mx-auto">
                        <!-- neteller ; skrill ; payoner ; amazon gifcard ; bitcoin -->
                        <div class="row"><strong>PASO 2 </strong><img src="../img/help_blue.png" height="23"></div>
                        <div class="row"
                             style="background-color: #55AAFF; color: white; font-size: 25px;border-top-left-radius: 0px;border-top-right-radius: 0px;">
                            <label style="margin-left: 105px; margin-top: 5px;"><strong>Recibes</strong></label>
                        </div>
                        <div class="row" style="background-color: #EAEAE9; border-bottom: #DAD8D8 solid 1px;">

                            <input type="text" size="20" class="input-element-destino" maxlength="7">
                            <strong style="color: #878889">&nbsp&nbspUSD</strong>
                        </div>
                        <div id="monederos-de-destino">
                            <div class="row centrador monederos-destino" id="neteller-recibo">
                                <img class="imagen" src="../img/neteller.medium.png">
                            </div>
                            <div class="row centrador monederos-destino" id="skrill-recibo">
                                <img class="imagen" src="../img/skrill.medium.png">
                            </div>
                            <div class="row centrador monederos-destino" id="payoneer-recibo">
                                <img class="imagen" src="../img/payoneer.medium.png">
                            </div>
                            <div class="row centrador monederos-destino" id="bitcoin-recibo">
                                <img class="imagen" src="../img/bitcoin.medium.png">
                            </div>
                            <div class="row centrador monederos-destino" id="amazon-recibo">
                                <img class="imagen" src="../img/amazon.medium.png">
                            </div>
                            <div class="row centrador monederos-destino" id="paypal-recibo">
                                <img class="imagen" src="../img/paypal.medium.png">
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4 mx-auto">
                        <div class="row" style="margin-left: 17px;"><strong>PASO 3 </strong><img
                                src="../img/help_blue.png" height="23"></div>
                        <a class="nav-link js-scroll-trigger" href="#services">
                            <button id="enviar"
                                    style="width: 170px; height: 50px;background-color: #F78223; color: white"
                                    type="button" class="btn"><strong>Siguiente</strong></button>
                        </a>
                        <div class="alert alert-danger" role="alert" style="display: none;width: 390px;" id="errores"></div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<section id="services" class="bg-light fondo2" style="display: none;">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto" style="margin-top: -100px;">
                <label style="font-size: 25px;">Completa los siguientes datos para finalizar el pedido.</label>
                <hr>
                <form>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nombre y Apellido</label>
                        <input type="text" class="form-control" id="nombre" aria-describedby="emailHelp"
                               placeholder="Ingrese su nombre y apellido" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                               placeholder="Ingrese email" required>
                    </div>
                    <hr>
                    <div class="form-group">
                        <label for="exampleInputEmail1" id="cuenta-origen"></label>
                        <input type="text" class="form-control" aria-describedby="emailHelp"
                               placeholder="Ingrese su cuenta origen" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1" id="cuenta-destino"></label>
                        <input type="text" class="form-control" id="" aria-describedby="emailHelp"
                               placeholder="Ingrese su cuenta destino" required>
                    </div>
                    <hr>
                    <div class="form-group">
                        <label for="exampleTextarea">Comentarios</label>
                        <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                    </div>

                    <button id="envio" type="button" class="btn"><strong>Enviar</strong></button>
                </form>
            </div>
        </div>
    </div>
</section>

<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <h2>Contactenos</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero odio fugiat voluptatem
                    dolor, provident officiis, id iusto! Obcaecati incidunt, qui nihil beatae magnam et repudiandae ipsa
                    exercitationem, in, quo totam.</p>
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom JavaScript for this theme -->
<script src="../js/scrolling-nav.js"></script>
<script src="../js/cleave.min.js"></script>
<script src="../js/scripts.js"></script>

</body>

</html>
