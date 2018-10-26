<!DOCTYPE html>
<html lang="en">

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

</head>
<style>
    .centrador {
        position: relative;
        padding: 40px;

    }

    .imagen {
        position: absolute;

        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        margin: auto;
    }

    .monederos-origen {
        border: #DAD8D8 solid 1px;
        background-color: #EAEAE9;
    }

    .monederos-destino {
        border: #DAD8D8 solid 1px;
        background-color: #EAEAE9;
    }

    .monedero-seleccion-origen {
        border-left: #1b1e21 solid 5px;
        border-color: #007BFF;
        background-color: #FFFFFF;
    }

    .monedero-seleccion-destino {
        border-left: #1b1e21 solid 5px;
        border-color: #007BFF;
        background-color: #FFFFFF;
    }

    .fondo:before {
        background-image: url('../img/fon.png');
        content: ' ';
        display: block;
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 110%;
        z-index: -1;
        opacity: 0.5;
        background-repeat: no-repeat;
        background-position: 0% 0;
        -ms-background-size: cover;
        -o-background-size: cover;
        -moz-background-size: cover;
        -webkit-background-size: cover;
        background-size: cover;
    }

    .fondo2:before {
        background-image: url('../img/fondo.jpg');
        content: ' ';
        display: block;
        position: absolute;
        left: 0;
        top: 1690px;
        width: 100%;
        height: 60%;
        z-index: -1;
        opacity: 0.50;
        background-repeat: no-repeat;
        background-position: 50% 0;
        -ms-background-size: cover;
        -o-background-size: cover;
        -moz-background-size: cover;
        -webkit-background-size: cover;
        background-size: cover;
    }
</style>

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

<!--<header class="bg-primary text-white" style="">
    <div class="container text-center">
        <h1>Jony Empire</h1>
        <p class="lead">Digital Money Exchange</p>
    </div>
</header> -->

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
                                   style="font-weight: bold;color: #003087;border: none;margin-left: 0px; margin-top: 0px;border-right: #DAD8D8 solid 2px;border-left: #DAD8D8 solid 2px; text-align: right; padding-right: 12px;"><strong
                                style="color: #878889">&nbsp&nbspUSD</strong>

                        </div>
                        <div id="monederos-de-origen">
                            <div class="row centrador monederos-origen" id="neteller-envio">
                                <img class="imagen" src="../img/neteller.medium.png">
                            </div>
                            <div class="row centrador monederos-origen" id="skrill-envio">
                                <img class="imagen" src="../img/skrill.medium.png">
                            </div>
                            <div class="row centrador monederos-origen" id="payoneer-envio">
                                <img class="imagen" src="../img/payoneer.medium.png">
                            </div>
                            <div class="row centrador monederos-origen" id="bitcoin-envio">
                                <img class="imagen" src="../img/bitcoin.medium.png">
                            </div>
                            <div class="row centrador monederos-origen" id="amazon-envio">
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

                            <input type="text" size="20" class="input-element-destino" maxlength="7"
                                   style="font-weight: bold;color: #003087;border: none;margin-left: 0px; margin-top: 0px;border-right: #DAD8D8 solid 2px;border-left: #DAD8D8 solid 2px; text-align: right; padding-right: 12px;"><strong
                                style="color: #878889">&nbsp&nbspUSD</strong>
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
                        <div class="alert alert-danger" role="alert" style="display: none;" id="errores">
                            <!-- <label id="error-monto-min"style="display: none;">* Debe enviar un minimo de 25 USD.</label><br>
                             <label id="error-origen"style="display: none;">* Debe seleccionar un monedero de origen.</label><br>
                             <label id="error-destino"style="display: none;">* Debe seleccionar un monedero de destino.</label><br>
                             <label id="error-monto-max"style="display: none;">* El monto maximo es de 2000 USD.</label><br>
                             <label id="error-monto-numeric"style="display: none;">* El monto debe ser un numero decimal.</label><br> -->
                        </div>
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

                    <button id="envio"
                            style="width: 170px; height: 50px;background-color: #F78223; color: white"
                            type="button" class="btn"><strong>Enviar</strong></button>
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
<script>
    $(document).ready(function () {
        $(".monederos-origen").click(function () {
            $(".monedero-seleccion-origen").addClass("monederos-origen");
            $(".monedero-seleccion-origen").removeClass("monedero-seleccion-origen");
            $(this).removeClass("monederos-origen");
            $(this).addClass("monedero-seleccion-origen");
        });

        $(".monederos-destino").click(function () {
            $(".monedero-seleccion-destino").addClass("monederos-destino");
            $(".monedero-seleccion-destino").removeClass("monedero-seleccion-destino");
            $(this).removeClass("monederos-destino");
            $(this).addClass("monedero-seleccion-destino");
        });

        $("#enviar").click(function () {
            var monto_origen = $(".input-element-origen").val();
            var monto_destino = $(".input-element-destino").val();
            var errores = "";
            var clase = "";
            var flag_origen = 0;
            var flag_destino = 0;

            if (!validateDecimal(monto_origen) || !validateDecimal(monto_destino))
                errores += "<label id=\"error-monto-numeric\">* El monto debe ser un numero decimal.</label>";

            if (monto_origen > 2000 || monto_destino > 2000)
                errores += "<label id=\"error-monto-max\">* El monto maximo es de 2000 USD.</label><br>";

            if (monto_origen < 25 || monto_destino < 25)
                errores += "<label id=\"error-monto-min\">* Debe enviar/recibir un minimo de 25 USD.</label><br>";

            $("#monederos-de-origen div").each(function () {
                clase = ($(this).attr('class'));
                if (clase.localeCompare("row centrador monedero-seleccion-origen") == 0) {
                    flag_origen = 1;
                }

            });

            if (flag_origen == 0) {
                errores += "<label>* Debe seleccionar un monedero de origen.</label><br>";
            }

            $("#monederos-de-destino div").each(function () {
                clase = ($(this).attr('class'));
                if (clase.localeCompare("row centrador monedero-seleccion-destino") == 0) {
                    flag_destino = 1;

                }
            });

            if (flag_destino == 0) {
                errores += "<label>* Debe seleccionar un monedero de destino.</label><br>";
            }

            if (errores != "") {
                $("#errores").show();
                $("#errores").html(errores);
            } else {
                $("#errores").hide()
                $("#errores").html("");
                errores = "";
            }


            $("#services").show();
            $("#solicitud").show();
            var origen = $(".monedero-seleccion-origen").attr("id");
            $("#cuenta-origen").html("Ingrese cuenta " + origen.slice(0, -6) + " origen");

            var destino = $(".monedero-seleccion-destino").attr("id");
            $("#cuenta-destino").html("Ingrese cuenta " + destino.slice(0, -7) + " destino");

        });

        function validateDecimal(valor) {
            var RE = /^\d*(\.\d{1})?\d{0,1}$/;
            if (RE.test(valor)) {
                return true;
            } else {
                return false;
            }
        }

    });

    var cleave1 = new Cleave('.input-element-origen', {
        numeral: true,
        numeralDecimalMark: '.',
        delimiter: ''

    });

    var cleave2 = new Cleave('.input-element-destino', {
        numeral: true,
        numeralDecimalMark: '.',
        delimiter: ''

    });
</script>

</body>

</html>
