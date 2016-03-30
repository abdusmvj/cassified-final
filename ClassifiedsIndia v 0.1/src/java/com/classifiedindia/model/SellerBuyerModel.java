package com.classifiedindia.model;

import com.classifiedindia.formbean.BuyerSellerInfoBean;
import com.classifiedindia.formbean.MobilePhonesFormBean;
import com.classifiedindia.vo.MobilePhoneVO;
import com.classifiedindia.vo.SellerBuyerVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SellerBuyerModel {

    public boolean insertSellerBuyerInfo(SellerBuyerVO sellerBuyerVO) {

        MobilePhoneVO mobilePhoneVO = new MobilePhoneVO();
        Connection conn = null;
        PreparedStatement pstmt = null, ps = null;

        ResultSet rs = null;
        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();

            if (null != conn) {

                pstmt = conn.prepareStatement("insert into seller_buyer_info_befor_login(your_type,your_name,email,mobile_no,address,city,state_id,district_id,pincode,buysel_uniq_id,corespond_subcatid) values(?,?,?,?,?,?,?,?,?,?,?)");
                pstmt.setString(1, sellerBuyerVO.getStatustype());
                pstmt.setString(2, sellerBuyerVO.getName());
                pstmt.setString(3, sellerBuyerVO.getEmail());
                pstmt.setString(4, sellerBuyerVO.getMobileno());
                pstmt.setString(5, sellerBuyerVO.getAddress());
                pstmt.setString(6, sellerBuyerVO.getCity());
                pstmt.setInt(7, Integer.parseInt(sellerBuyerVO.getStateid()));
                pstmt.setInt(8, Integer.parseInt(sellerBuyerVO.getDistrictid()));
                pstmt.setString(9, sellerBuyerVO.getPincode());
                pstmt.setInt(10, sellerBuyerVO.getUnique());
                pstmt.setInt(11, Integer.parseInt(sellerBuyerVO.getSubcatid()));
                pstmt.execute();
                pstmt.close();

                ps = conn.prepareStatement("select seller_buyer_info_befor_login.your_name, seller_buyer_info_befor_login.email,\n" +
"seller_buyer_info_befor_login.address, seller_buyer_info_befor_login.city,\n" +
"state_table.state_name, district_table.district_name\n" +
"FROM classifiedindia.seller_buyer_info_befor_login\n" +
"INNER JOIN state_table ON state_table.state_id = seller_buyer_info_befor_login.state_id \n" +
"INNER JOIN district_table ON district_table.district_id = seller_buyer_info_befor_login.district_id\n" +
"where seller_buyer_info_befor_login.buysel_uniq_id=? and seller_buyer_info_befor_login.corespond_subcatid=?");
                ps.setInt(1, sellerBuyerVO.getUnique());
                ps.setInt(2, Integer.parseInt(sellerBuyerVO.getSubcatid()));
                rs = ps.executeQuery();
                while (rs.next()) {                    
                    sellerBuyerVO.setName(rs.getString("your_name"));
                    sellerBuyerVO.setEmail(rs.getString("email"));
                    sellerBuyerVO.setAddress(rs.getString("address"));
                    sellerBuyerVO.setCity(rs.getString("city"));
                    sellerBuyerVO.setState(rs.getString("state_name"));
                    sellerBuyerVO.setDistrict(rs.getString("district_name"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != conn) {
                    conn.close();
                }
                if (null != pstmt) {
                    pstmt.close();
                }
                if (null != ps) {
                    pstmt.close();
                }
                if (null != rs) {
                    pstmt.close();
                }
            } catch (SQLException s) {
                s.printStackTrace();
            }
        }

        return true;

    }
}
