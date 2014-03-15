/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bilisimegitim.course.dao;

import com.bilisimegitim.course.entity.Kullanici;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author Adem
 */
public class KullaniciDAO {

    public Kullanici getKullanici(String email) throws Exception{
        Connection con = null;
        Kullanici kullanici = null;
        try {
            String sqlStr = "select * from kullanici where email=?";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adem?zeroDateTimeBehavior=convertToNull", "root", "");
            PreparedStatement pstmt = con.prepareStatement(sqlStr);
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                kullanici = new Kullanici();
                kullanici.setKullaniciId(rs.getInt("kullanici_id"));
                kullanici.setKullaniciAd(rs.getString("kullanici_ad"));
                kullanici.setKullaniciSoyad(rs.getString("kullanici_soyad"));
                kullanici.setCinsiyet(rs.getString("cinsiyet"));
                kullanici.setEmail(rs.getString("email"));
                kullanici.setDogumTarihi(new Date(rs.getDate("dogum_tarihi").getTime()));
                kullanici.setSifre(rs.getString("sifre"));
            }
        } catch (ClassNotFoundException ex) {
            throw new Exception(ex);
        } catch (SQLException ex) {
            throw new Exception(ex);
        } finally{
            if(con != null){
                try {
                    con.close();
                } catch (SQLException ex) {
                    throw new Exception(ex);
                }
            }
        }
        return kullanici;
    }

    public void createKullanici() {
        String sqlStr="select * from kullanici where email=?";
        Connection con=null;
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/arda?zeroDateTimeBehavior=convertToNull");
        psmt.setString(1, email);
        ResultSet rs=pstmt.executeQuery();
        if(rs.next())){
            kullanici=new Kullanici();
            kullanici.setKullanici(rs.getInt("kullanici_id"));
            kullanici
        }
        }catch(ClassNotFoundException ex){
            Logger.getLogger(KullaniciDAO);
    }

    public void updateKullanci() {

    }

    public void deleteKullanici() {

    }
}
