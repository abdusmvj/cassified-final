package com.classifiedindia.model;

import com.classified.dateconvert.DateConversion;
import com.classifiedindia.vo.MobilePhoneVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.StringTokenizer;

public class MobileModel {

    public boolean postMobilePhoneAdv(MobilePhoneVO mobilePhoneVO) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        PreparedStatement pstmt1 = null;
        PreparedStatement pstmt2 = null;
        PreparedStatement pstmt3 = null;
        ResultSet rs = null;
        ResultSet rs1 = null;
        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();

            if (null != conn) {

                pstmt = conn.prepareStatement("insert into post_mobile_section(image_id,mobile_title,mobile_condition,brand,model,os,no_of_sim,description,type_of_add,actual_price,exp_price,posting_date,mobile_subcat_id) values(?,?,?,?,?,?,?,?,?,?,?,now(),?)");
                pstmt.setDouble(1, mobilePhoneVO.getImageId());
                pstmt.setString(2, mobilePhoneVO.getMobileadTitle());
                pstmt.setString(3, mobilePhoneVO.getMobicondition());
                pstmt.setInt(4, Integer.parseInt(mobilePhoneVO.getMobibrand()));
                pstmt.setInt(5, Integer.parseInt(mobilePhoneVO.getMobimodel()));
                pstmt.setInt(6, Integer.parseInt(mobilePhoneVO.getMobiOS()));
                pstmt.setInt(7, Integer.parseInt(mobilePhoneVO.getMobisimNo()));
                pstmt.setString(8, mobilePhoneVO.getMobidescription());
                pstmt.setString(9, mobilePhoneVO.getTypeofAd());
                pstmt.setDouble(10, Double.parseDouble(mobilePhoneVO.getMobiprice()));
                pstmt.setDouble(11, Double.parseDouble(mobilePhoneVO.getXpectmobiprice()));
                pstmt.setInt(12, Integer.parseInt(mobilePhoneVO.getMobisubcatid()));
                pstmt.execute();
                pstmt.close();

                pstmt1 = conn.prepareStatement("SELECT pms.mobile_adv_id, pms.mobile_title, pms.description, pms.actual_price, pms.mobile_subcat_id, pms.posting_date,\n"
                        + "mbt.brand_name,mmt.model_name, mot.os_name , mnt.noof_name\n"
                        + "from post_mobile_section as pms , mobi_brand_table as mbt, mobi_model_table as mmt ,mobi_os_tab mot , mobi_noofsim_tab mnt \n"
                        + " where pms.brand = mbt.brand_id and pms.model= mmt.model_id and pms.os = mot.os_id and pms.no_of_sim = mnt.noof_id\n"
                        + " order by mobile_adv_id desc limit 1");
                rs = pstmt1.executeQuery();
                while (rs.next()) {
                    mobilePhoneVO.setUnique(rs.getInt("mobile_adv_id"));
                    mobilePhoneVO.setMobisubcatid(rs.getString("mobile_subcat_id"));
                    mobilePhoneVO.setMobileadTitle(rs.getString("mobile_title"));
                    mobilePhoneVO.setMobidescription(rs.getString("description"));
                    mobilePhoneVO.setMobiprice(rs.getString("actual_price"));
                    mobilePhoneVO.setMobibrandName(rs.getString("brand_name"));
                    mobilePhoneVO.setMobimodelName(rs.getString("model_name"));
                    mobilePhoneVO.setMobiOSName(rs.getString("os_name"));
                    mobilePhoneVO.setMobisimNoName(rs.getString("noof_name"));
                    DateConversion dateconnversion = new DateConversion();
                    String newdate = dateconnversion.convertDbDate(rs.getString("posting_date"));
                    mobilePhoneVO.setDate(newdate);
                }
                pstmt1.close();
                rs.close();

                String[] includesid = mobilePhoneVO.getIncludesid();
                for (int i = 0; i < includesid.length; i++) {
                    pstmt2 = conn.prepareStatement("insert into classifiedindia.mobi_include_tab (mobile_adv_id, includ_id) values (?,?)");
                    pstmt2.setInt(1, mobilePhoneVO.getUnique());
                    pstmt2.setInt(2, Integer.parseInt(includesid[i]));
                    pstmt2.execute();
                }
                pstmt2.close();

                pstmt3 = conn.prepareStatement("select mit.include_name from mobi_include_tabvalue as mit, mobi_include_tab as mit1 where mit.includ_id = mit1.includ_id\n"
                        + "and mit1.mobile_adv_id = ?");
                pstmt3.setInt(1, mobilePhoneVO.getUnique());
                rs1 = pstmt3.executeQuery();
                StringBuffer sb = new StringBuffer();
                while (rs1.next()) {
                    String s = rs1.getString("include_name");
                    sb.append(" " + s);
                }
                StringTokenizer st = new StringTokenizer(sb.toString());
                StringBuffer sb1 = new StringBuffer();
                while (st.hasMoreElements()) {
                    sb1.append(st.nextToken());
                    if (st.hasMoreElements()) {
                        sb1.append(", ");
                    }
                }
                mobilePhoneVO.setIncludesname(sb1.toString());
                System.out.println("get " + mobilePhoneVO.getIncludesname());
                pstmt3.close();
                rs1.close();
            }
            conn.close();
        } catch (Exception exception) {
            System.out.println(" Message : " + exception.getMessage());
            exception.printStackTrace();
        } /*finally {
         try {
         if (null != conn) {
         conn.close();
         }
         if (null != pstmt) {
         conn.close();
         }
         } catch (SQLException exception) {

         }

         }*/


        return true;
    }

    public boolean postAccessoryAdv(MobilePhoneVO mobilePhoneVO) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        PreparedStatement pstmt1 = null;
        ResultSet rs = null;
        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();

            if (null != conn) {

                pstmt = conn.prepareStatement("insert into post_accessory_section(access_img_id,access_title,access_condition,accessry_brand_id,accessory_id,access_descript,access_typof_ad,access_price,access_xpect_price,access_posting_date,access_subcat_id) values(?,?,?,?,?,?,?,?,?,now(),?)");
                pstmt.setDouble(1, mobilePhoneVO.getImageId());
                pstmt.setString(2, mobilePhoneVO.getMobileadTitle());
                pstmt.setString(3, mobilePhoneVO.getMobicondition());
                pstmt.setInt(4, Integer.parseInt(mobilePhoneVO.getAccessoribrandId()));
                pstmt.setInt(5, Integer.parseInt(mobilePhoneVO.getAccessorytypeId()));
                pstmt.setString(6, mobilePhoneVO.getMobidescription());
                pstmt.setString(7, mobilePhoneVO.getTypeofAd());
                pstmt.setDouble(8, Double.parseDouble(mobilePhoneVO.getMobiprice()));
                pstmt.setDouble(9, Double.parseDouble(mobilePhoneVO.getXpectmobiprice()));
                pstmt.setInt(10, Integer.parseInt(mobilePhoneVO.getSubcatid()));
                pstmt.execute();

                //pstmt1 = conn.prepareStatement("select post_accessory_section.accessory_adv_id, post_accessory_section.access_subcat_id from post_accessory_section order by accessory_adv_id desc limit 1");
                pstmt1 = conn.prepareStatement("SELECT post_accessory_section.accessory_adv_id, post_accessory_section.access_title, \n"
                        + "post_accessory_section.access_subcat_id, post_accessory_section.access_price, post_accessory_section.access_descript,\n"
                        + "post_accessory_section.access_posting_date,\n"
                        + "accessories_type_table.accessory_name, accessoty_brand_table.accessoty_brand_name\n"
                        + "FROM classifiedindia.post_accessory_section \n"
                        + "INNER JOIN accessories_type_table ON accessories_type_table.accessory_id = post_accessory_section.accessory_id \n"
                        + "INNER JOIN accessoty_brand_table ON accessoty_brand_table.accessry_brand_id = post_accessory_section.accessry_brand_id\n"
                        + " order by accessory_adv_id desc limit 1");
                rs = pstmt1.executeQuery();
                while (rs.next()) {
                    mobilePhoneVO.setUnique(rs.getInt("accessory_adv_id"));
                    mobilePhoneVO.setSubcatid(String.valueOf(rs.getInt("access_subcat_id")));
                    mobilePhoneVO.setMobileadTitle(rs.getString("access_title"));
                    mobilePhoneVO.setMobiprice(rs.getString("access_price"));
                    mobilePhoneVO.setMobidescription(rs.getString("access_descript"));
                    mobilePhoneVO.setAccessorytypeName(rs.getString("accessory_name"));
                    mobilePhoneVO.setAccessoribrandName(rs.getString("accessoty_brand_name"));
                    DateConversion dateconnversion = new DateConversion();
                    String newdate = dateconnversion.convertDbDate(rs.getString("access_posting_date"));
                    mobilePhoneVO.setDate(newdate);
                }
                System.out.println("hello: " + mobilePhoneVO.getUnique());
                System.out.println("hiii: " + mobilePhoneVO.getSubcatid());

                pstmt1.close();
                rs.close();
                conn.close();
            }
        } catch (Exception exception) {
            System.out.println(" Message : " + exception.getMessage());
            exception.printStackTrace();
        } /*finally {
         try {
         if (null != conn) {
         conn.close();
         }
         if (null != pstmt) {
         conn.close();
         }
         } catch (SQLException exception) {

         }

         }*/

        return true;
    }

    public boolean postTabletAdv(MobilePhoneVO mobilePhoneVO) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        PreparedStatement pstmt1 = null;
        ResultSet rs = null;
        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();

            if (null != conn) {

                pstmt = conn.prepareStatement("insert into post_tablet_section(tab_img_id,tab_title,tab_ad_type,tab_cond,tab_price,tab_minexp_price,tab_brand_id,tab_description,posting_date,subcat_id) values(?,?,?,?,?,?,?,?,now(),?)");
                pstmt.setDouble(1, mobilePhoneVO.getImageId());
                pstmt.setString(2, mobilePhoneVO.getMobileadTitle());
                pstmt.setString(3, mobilePhoneVO.getTypeofAd());
                pstmt.setString(4, mobilePhoneVO.getMobicondition());
                pstmt.setDouble(5, Double.parseDouble(mobilePhoneVO.getMobiprice()));
                pstmt.setDouble(6, Double.parseDouble(mobilePhoneVO.getXpectmobiprice()));
                pstmt.setInt(7, Integer.parseInt(mobilePhoneVO.getTabletbrandId()));
                pstmt.setString(8, mobilePhoneVO.getMobidescription());
                pstmt.setInt(9, Integer.parseInt(mobilePhoneVO.getSubcatid()));
                pstmt.execute();

                pstmt1 = conn.prepareStatement("SELECT pt.tab_adv_id, pt.tab_title, pt.tab_cond, tbt.tab_brand_name, pt.tab_price, pt.tab_description, pt.posting_date, pt.subcat_id\n"
                        + "FROM classifiedindia.post_tablet_section as pt, classifiedindia.tablet_brand_table as tbt\n"
                        + "where tbt.tab_brand_id = pt.tab_brand_id\n"
                        + "order by tab_adv_id desc limit 1");
                rs = pstmt1.executeQuery();
                while (rs.next()) {
                    mobilePhoneVO.setUnique(rs.getInt("tab_adv_id"));
                    mobilePhoneVO.setSubcatid(String.valueOf(rs.getInt("subcat_id")));
                    mobilePhoneVO.setMobileadTitle(rs.getString("tab_title"));
                    mobilePhoneVO.setMobiprice(rs.getString("tab_price"));
                    mobilePhoneVO.setMobidescription(rs.getString("tab_description"));
                    mobilePhoneVO.setTabletbrandName(rs.getString("tab_brand_name"));
                    DateConversion dateconnversion = new DateConversion();
                    String newdate = dateconnversion.convertDbDate(rs.getString("posting_date"));
                    mobilePhoneVO.setDate(newdate);
                }

                pstmt1.close();
                rs.close();
                conn.close();
            }
        } catch (Exception exception) {
            System.out.println(" Message : " + exception.getMessage());
            exception.printStackTrace();
        } /*finally {
         try {
         if (null != conn) {
         conn.close();
         }
         if (null != pstmt) {
         conn.close();
         }
         } catch (SQLException exception) {

         }

         }*/

        return true;
    }
}
