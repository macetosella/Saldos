package ar.com.saldos.dtos;

public class MonederoDTO {
    String monedero;
    float comision_porc;
    float comision_fija;
    float comision_minima;
    float saldo;
    float ganancia_recibo;
    float ganancia_envio;
    String nombre_html;

    @Override
    public String toString() {
        return "MonederoDTO{" +
                "monedero='" + monedero + '\'' +
                ", comision_porc=" + comision_porc +
                ", comision_fija=" + comision_fija +
                ", comision_minima=" + comision_minima +
                ", saldo=" + saldo +
                ", ganancia_recibo=" + ganancia_recibo +
                ", ganancia_envio=" + ganancia_envio +
                ", nombre_html='" + nombre_html + '\'' +
                '}';
    }

    public String getMonedero() {
        return monedero;
    }

    public void setMonedero(String monedero) {
        this.monedero = monedero;
    }

    public float getComision_porc() {
        return comision_porc;
    }

    public void setComision_porc(float comision_porc) {
        this.comision_porc = comision_porc;
    }

    public float getComision_fija() {
        return comision_fija;
    }

    public void setComision_fija(float comision_fija) {
        this.comision_fija = comision_fija;
    }

    public float getComision_minima() {
        return comision_minima;
    }

    public void setComision_minima(float comision_minima) {
        this.comision_minima = comision_minima;
    }

    public float getSaldo() {
        return saldo;
    }

    public void setSaldo(float saldo) {
        this.saldo = saldo;
    }

    public float getGanancia_recibo() {
        return ganancia_recibo;
    }

    public void setGanancia_recibo(float ganancia_recibo) {
        this.ganancia_recibo = ganancia_recibo;
    }

    public float getGanancia_envio() {
        return ganancia_envio;
    }

    public void setGanancia_envio(float ganancia_envio) {
        this.ganancia_envio = ganancia_envio;
    }

    public String getNombre_html() {
        return nombre_html;
    }

    public void setNombre_html(String nombre_html) {
        this.nombre_html = nombre_html;
    }
}
