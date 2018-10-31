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
        var origen = $(".monedero-seleccion-origen").attr("id");
        origen = origen.slice(0, -6);
        var valor_origen = $(".input-element-origen").val();
        var destino = $(".monedero-seleccion-destino").attr("id");
        if(destino != null)
            destino = destino.slice(0, -7);
        $.post("/Saldos", {monto_origen: valor_origen, monedero_origen: origen, monedero_destino: destino})
            .done(function (valor) {
                $(".input-element-destino").val(valor);
            });


        valor_destino = $(".input-element-destino").val();
        $.post("/Saldos", {destino: valor_destino})
            .done(function (valor) {
                $(".input-element-origen").val(valor);
            });
    });
    $("#enviar").click(function () {
        var monto_origen = $(".input-element-origen").val();
        var monto_destino = $(".input-element-destino").val();
        var errores = "";
        var clase = "";
        var flag_origen = 0;
        var flag_destino = 0;

        if (!validateDecimal(monto_origen) || !validateDecimal(monto_destino)) {
            errores += "<label id=\"error-monto-numeric\">* El monto debe ser un numero decimal.</label>";
        }
        if (monto_origen > 2000 || monto_destino > 2000) {
            errores += "<label id=\"error-monto-max\">* El monto maximo es de 2000 USD.</label><br>";
        }
        if (monto_origen < 25 || monto_destino < 25) {
            errores += "<label id=\"error-monto-min\">* Debe enviar/recibir un minimo de 25 USD.</label><br>";
        }
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
            $("#services").show();
            $("#solicitud").show();
            $("#errores").html("");
            errores = "";
        }

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