package ar.com.saldos.daos;

import ar.com.saldos.clases.ConexionMySQL;
import ar.com.saldos.dtos.MonederoDTO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Collection;
import java.util.Vector;

public class MonederoDAO {

    private java.sql.Connection con = null;
    private PreparedStatement pstm = null;
    private ResultSet rs = null;

    public Collection<MonederoDTO> findAll() {

        try {
            // Instancias la clase que hemos creado anteriormente
            ConexionMySQL SQL = new ConexionMySQL();
            // Llamas al método que tiene la clase y te devuelve una conexión
            con = SQL.conectarMySQL();

            String sql = "SELECT * FROM monederos ";
            pstm = con.prepareStatement(sql);

            rs = pstm.executeQuery();
            Vector<MonederoDTO> ret = new Vector<MonederoDTO>();
            MonederoDTO dto = null;
            while (rs.next()) {
                dto = new MonederoDTO();
                dto.setComision_fija(rs.getFloat("comision_fija"));
                dto.setComision_minima(rs.getFloat("comision_minima"));
                dto.setComision_porc(rs.getFloat("comision_porc"));
                dto.setGanancia_envio(rs.getFloat("ganancia_envio"));
                dto.setGanancia_recibo(rs.getFloat("ganancia_recibo"));
                dto.setMonedero(rs.getString("monedero"));
                dto.setSaldo(rs.getFloat("saldo"));
                dto.setNombre_html(rs.getString("nombre_html"));
                ret.add(dto);
            }
            return ret;
        } catch (
                Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstm != null) pstm.close();
            } catch (Exception ex) {
                ex.printStackTrace();
                throw new RuntimeException(ex);
            }
        }
    }

    public Float getDineroDestino(String monto_origen, String monedero_origen, String monedero_destino) {

        try {
            // Instancias la clase que hemos creado anteriormente
            ConexionMySQL SQL = new ConexionMySQL();
            // Llamas al método que tiene la clase y te devuelve una conexión
            con = SQL.conectarMySQL();
            //Hacer un select por monedero_origen y traer ganancia_origen
            String sql = "SELECT * FROM monederos WHERE monedero like '%" + monedero_origen + "%'";
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery();
            Float ganancia_recibo = null;
            while (rs.next()) {
                ganancia_recibo = rs.getFloat("ganancia_recibo");
            }
            //Hacer un select por monedero_destino y traer comision_porc comision_fija comision_min ganancia_destino
            sql = "SELECT comision_porc, comision_minima, ganancia_envio, comision_fija  FROM monederos WHERE monedero like '%" + monedero_destino + "%'";
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery();
            Double ganancia_envio = null;
            Double comision_min = null;
            Double comision_porc = null;
            Double comision_fija = null;
            while (rs.next()) {
                ganancia_envio = rs.getDouble("ganancia_envio");
                comision_min = rs.getDouble("comision_minima");
                comision_porc = rs.getDouble("comision_porc");
                comision_fija = rs.getDouble("comision_fija");
            }
            //ganancia = monto_origen * ( ganancia_recibo + ganancia_destino )
            Float ganancia = Integer.parseInt(monto_origen) * ((float)(ganancia_recibo + ganancia_envio));
            //comision_envio = (monto_origen - ganancia ) * comision_porc + comision_fija
            Float comision_envio = (((Integer.parseInt(monto_origen) - ganancia) * comision_porc.floatValue()) + comision_fija.floatValue());
            if (comision_min > comision_envio) {
                comision_envio = comision_min.floatValue();
            }
            Float monto_destino = (Integer.parseInt(monto_origen)) - ganancia - comision_envio;
            return monto_destino;
        } catch (
                Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstm != null) pstm.close();
            } catch (Exception ex) {
                ex.printStackTrace();
                throw new RuntimeException(ex);
            }
        }
    }
}