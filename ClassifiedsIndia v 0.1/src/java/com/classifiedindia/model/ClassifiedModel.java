package com.classifiedindia.model;

import com.classified.dateconvert.DateConversion;
import com.classifiedindia.vo.CategoryVO;
import com.classifiedindia.vo.ClassifiedImageVO;
import com.classifiedindia.vo.ClassifiedIndiaVO;
import com.classifiedindia.vo.ResultVO;
import com.classifiedindia.vo.UserProfileVO;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ClassifiedModel {

    public ArrayList<CategoryVO> selectSubCate(int category) throws SQLException {
        ArrayList<CategoryVO> subcatlist = new ArrayList<CategoryVO>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        DbConnection dbConnection = new DbConnection();
        conn = dbConnection.dbConnect();
        pstmt = conn.prepareStatement("select classified_sub_category.classified_sub_category_id, classified_sub_category.classified_sub_category_name, classified_category.classified_category_name from classifiedindia.classified_sub_category inner join classifiedindia.classified_category on classified_category.classified_category_id=classified_sub_category.classified_category_id where classified_category.classified_category_id=?");
        pstmt.setInt(1, category);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            CategoryVO categoryVO = new CategoryVO();
            categoryVO.setSubcategoryName(rs.getString("classified_sub_category_name"));
            categoryVO.setSubcategoryId(String.valueOf(rs.getInt("classified_sub_category_id")));
            subcatlist.add(categoryVO);
        }
        conn.close();
        return subcatlist;
    }

    public ArrayList<ClassifiedIndiaVO> populateClassifiedSearchList(String searchWord) throws SQLException {
        ArrayList<ClassifiedIndiaVO> searchList = new ArrayList<ClassifiedIndiaVO>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        DbConnection dbConnection = new DbConnection();
        conn = dbConnection.dbConnect();
        System.out.println(searchWord);
        pstmt = conn.prepareStatement("SELECT classified_adv.classified_id, classified_adv.classified_category_id, classified_adv.classified_sub_category_id, classified_adv.classified_organization_name, classified_adv.classified_title, classified_adv.classified_subject, classified_adv.classified_primary_contact_number, classified_adv.classified_secondary_contact_number, classified_adv.classified_email_id, classified_adv.classified_website_url, classified_adv.classified_contact_person, classified_adv.classified_posting_date, classified_adv.classified_expire_date, classified_adv.classified_expire_warning_date, classified_category.classified_category_name, classified_sub_category.classified_sub_category_name FROM classifiedindia.classified_adv INNER JOIN classified_category ON classified_category.classified_category_id = classified_adv.classified_category_id INNER JOIN classified_sub_category ON classified_sub_category.classified_sub_category_id = classified_adv.classified_sub_category_id where MATCH(classified_adv.classified_subject, classified_adv.classified_title) AGAINST(? IN NATURAL LANGUAGE MODE) or MATCH(classified_category.classified_category_name) AGAINST(? IN NATURAL LANGUAGE MODE) or MATCH(classified_sub_category.classified_sub_category_name) AGAINST(? IN NATURAL LANGUAGE MODE) order by classified_adv.classified_posting_date desc");
        pstmt.setString(1, searchWord);
        pstmt.setString(2, searchWord);
        pstmt.setString(3, searchWord);
        System.out.println(searchWord);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            ClassifiedIndiaVO classifiedIndiaVO = new ClassifiedIndiaVO();
            DateConversion dateconnversion = new DateConversion();

            classifiedIndiaVO.setClassifiedId(String.valueOf(rs.getInt("classified_id")));
            classifiedIndiaVO.setClassifiedCategory(String.valueOf(rs.getInt("classified_category_id")));
            classifiedIndiaVO.setClassifiedCategoryName(rs.getString("classified_category_name"));
            classifiedIndiaVO.setClassifiedSubCategory(String.valueOf(rs.getInt("classified_sub_category_id")));
            classifiedIndiaVO.setClassifiedSubCategoryName(rs.getString("classified_sub_category_name"));
            classifiedIndiaVO.setClassifiedSubject(rs.getString("classified_subject"));
            classifiedIndiaVO.setClassifiedEmailId(rs.getString("classified_email_id"));
            classifiedIndiaVO.setClassifiedPrimaryContact(rs.getString("classified_primary_contact_number"));
            classifiedIndiaVO.setClassifiedSecondaryContact(rs.getString("classified_secondary_contact_number"));
            classifiedIndiaVO.setClassifiedContactPerson(rs.getString("classified_contact_person"));
            classifiedIndiaVO.setClassifiedWebUrl(rs.getString("classified_website_url"));
/*
            String newpost = dateconnversion.convertDbDate(rs.getString("classified_posting_date"));
            classifiedIndiaVO.setClassifiedPostingDate(newpost);

            String newexp = dateconnversion.convertDbDate(rs.getString("classified_expire_date"));
            classifiedIndiaVO.setClassifiedExpireDate(newexp);

            String newexpwarn = dateconnversion.convertDbDate(rs.getString("classified_expire_warning_date"));
            classifiedIndiaVO.setClassifiedExpireWarrningDate(newexpwarn);
*/
            classifiedIndiaVO.setClassifiedOrganizationName(rs.getString("classified_organization_name"));
            searchList.add(classifiedIndiaVO);
        }
        pstmt.close();
        conn.close();
        return searchList;
    }

    public void populateClassifiedAdvDetails(ClassifiedIndiaVO classifiedIndiaVO) {
        DateConversion dateconnversion = new DateConversion();
        //ClassifiedIndiaVO classifiedIndiaVO = new ClassifiedIndiaVO();

        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement pstmt = null;

        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();
            System.out.println(" I am here ......");
            if (null != conn) {
                pstmt = conn.prepareStatement("SELECT classified_adv.classified_id, classified_adv.classified_category_id, classified_adv.classified_sub_category_id, classified_adv.classified_organization_name, classified_adv.classified_subject, classified_adv.classified_primary_contact_number,classified_adv.classified_secondary_contact_number,classified_adv.classified_email_id,classified_adv.classified_website_url,classified_adv.classified_contact_person,classified_adv.classified_posting_date,classified_adv.classified_expire_date,classified_adv.classified_expire_warning_date,classified_category.classified_category_name,classified_sub_category.classified_sub_category_name FROM classifiedindia.classified_adv INNER JOIN classified_category ON classified_category.classified_category_id = classified_adv.classified_category_id INNER JOIN classified_sub_category ON classified_sub_category.classified_sub_category_id = classified_adv.classified_sub_category_id where classified_adv.classified_id=?");
                pstmt.setString(1, classifiedIndiaVO.getClassifiedId());
                rs = pstmt.executeQuery();
                while (rs.next()) {
                    classifiedIndiaVO.setClassifiedId(String.valueOf(rs.getInt("classified_id")));
                    classifiedIndiaVO.setClassifiedCategory(String.valueOf(rs.getInt("classified_category_id")));
                    classifiedIndiaVO.setClassifiedCategoryName(rs.getString("classified_category_name"));
                    classifiedIndiaVO.setClassifiedSubCategory(String.valueOf(rs.getInt("classified_sub_category_id")));
                    classifiedIndiaVO.setClassifiedSubCategoryName(rs.getString("classified_sub_category_name"));
                    classifiedIndiaVO.setClassifiedSubject(rs.getString("classified_subject"));
                    classifiedIndiaVO.setClassifiedEmailId(rs.getString("classified_email_id"));
                    classifiedIndiaVO.setClassifiedPrimaryContact(rs.getString("classified_primary_contact_number"));
                    classifiedIndiaVO.setClassifiedSecondaryContact(rs.getString("classified_secondary_contact_number"));
                    classifiedIndiaVO.setClassifiedContactPerson(rs.getString("classified_contact_person"));
                    classifiedIndiaVO.setClassifiedWebUrl(rs.getString("classified_website_url"));
                    String newpost = dateconnversion.convertDbDate(rs.getString("classified_posting_date"));
                    classifiedIndiaVO.setClassifiedPostingDate(newpost);

                    String newexp = dateconnversion.convertDbDate(rs.getString("classified_expire_date"));
                    classifiedIndiaVO.setClassifiedExpireDate(newexp);

                    String newexpwarn = dateconnversion.convertDbDate(rs.getString("classified_expire_warning_date"));
                    classifiedIndiaVO.setClassifiedExpireWarrningDate(newexpwarn);

                    classifiedIndiaVO.setClassifiedOrganizationName(rs.getString("classified_organization_name"));
                }

            } else {
                System.out.println("Connection Not Found !!!!!!!!!!!");
            }
        } catch (Exception exception) {
            exception.printStackTrace();
        } finally {
            try {
                if (null != rs) {
                    rs.close();
                }
                if (null != pstmt) {
                    pstmt.close();
                }
                if (null != conn) {
                    conn.close();
                }
            } catch (SQLException sqlException) {
            }
        }

    }

    public List<Integer> populateClassifiedPhotoIds(String classifiedId) {
        List<Integer> listOfPhotoIds = new ArrayList<Integer>();

        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement pstmt = null;

        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();
            System.out.println(" I am here ......");
            if (null != conn) {
                // String sqlQuery = "select * from classified_adv where classified_category = ?  and classified_sub_category = ?";and classified_primary_contact_number='"+primarycontact+"'";

                String sqlQuery = "select classified_image_id from classified_adv_photo where classified_id = " + classifiedId;
                //   System.out.println(" sqlQuery :" + sqlQuery);
                pstmt = conn.prepareStatement(sqlQuery);

                // pstmt.setString(1, category);
                // pstmt.setString(2, subcategory);
                rs = pstmt.executeQuery();

                while (rs.next()) {
                    listOfPhotoIds.add(rs.getInt("classified_image_id"));
                }

            } else {
                System.out.println("Connection Not Found !!!!!!!!!!!");
            }
        } catch (Exception exception) {
        } finally {
            try {
                if (null != rs) {
                    rs.close();
                }
                if (null != pstmt) {
                    pstmt.close();
                }
                if (null != conn) {
                    conn.close();
                }
            } catch (SQLException sqlException) {
            }
        }

        return listOfPhotoIds;
    }

    public void populateClassifiedAdv(ClassifiedIndiaVO classifiedIndiaVO) {
        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement pstmt = null;

        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();
            System.out.println(" I am here ......");

            if (null != conn) {

                //pstmt = conn.prepareStatement("SELECT * FROM classified_adv where classified_email_id= ?");
                pstmt = conn.prepareStatement("SELECT classified_adv.classified_id, classified_adv.classified_category_id, classified_adv.classified_sub_category_id, classified_adv.classified_organization_name, classified_adv.classified_subject, classified_adv.classified_primary_contact_number,classified_adv.classified_secondary_contact_number,classified_adv.classified_email_id,classified_adv.classified_website_url,classified_adv.classified_contact_person,classified_adv.classified_posting_date,classified_adv.classified_expire_date,classified_adv.classified_expire_warning_date,classified_adv.classified_images,classified_category.classified_category_name,classified_sub_category.classified_sub_category_name FROM classifiedindia.classified_adv INNER JOIN classified_category ON classified_category.classified_category_id = classified_adv.classified_category_id INNER JOIN classified_sub_category ON classified_sub_category.classified_sub_category_id = classified_adv.classified_sub_category_id where classified_adv.classified_email_id=?");
                pstmt.setString(1, classifiedIndiaVO.getClassifiedEmailId());
                rs = pstmt.executeQuery();

                while (rs.next()) {
                    classifiedIndiaVO.setClassifiedId(String.valueOf(rs.getInt("classified_id")));
                    classifiedIndiaVO.setClassifiedCategory(String.valueOf(rs.getInt("classified_category_id")));
                    classifiedIndiaVO.setClassifiedCategoryName(rs.getString("classified_category_name"));
                    classifiedIndiaVO.setClassifiedSubCategory(String.valueOf(rs.getString("classified_sub_category_id")));
                    classifiedIndiaVO.setClassifiedSubCategoryName(rs.getString("classified_sub_category_name"));
                    classifiedIndiaVO.setClassifiedSubject(rs.getString("classified_subject"));
                    //classifiedIndiaVO.setClassifiedEmailId(rs.getString("classified_email_id"));
                    classifiedIndiaVO.setClassifiedPrimaryContact(rs.getString("classified_primary_contact_number"));
                    classifiedIndiaVO.setClassifiedSecondaryContact(rs.getString("classified_secondary_contact_number"));
                    classifiedIndiaVO.setClassifiedContactPerson(rs.getString("classified_contact_person"));
                    classifiedIndiaVO.setClassifiedWebUrl(rs.getString("classified_website_url"));
                    classifiedIndiaVO.setClassifiedPostingDate(rs.getString("classified_posting_date"));
                    classifiedIndiaVO.setClassifiedExpireDate(rs.getString("classified_expire_date"));
                    classifiedIndiaVO.setClassifiedExpireWarrningDate(rs.getString("classified_expire_warning_date"));
                    classifiedIndiaVO.setClassifiedOrganizationName(rs.getString("classified_organization_name"));
                    classifiedIndiaVO.setClassifiedImageId(rs.getDouble("classified_images"));
                }

            } else {
                System.out.println("Connection Not Found !!!!!!!!!!!");
            }
        } catch (Exception exception) {
            System.out.println(" Message :-->" + exception.getMessage());
            exception.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException exception) {
                exception.printStackTrace();
            }
            /*try {
             if (null != rs) {
             rs.close();
             }
             if (null != pstmt) {
             pstmt.close();
             }
             if (null != conn) {
             conn.close();
             }
             } catch (SQLException sqlException) {
             }*/
        }

    }

    public boolean updateClassifiedAd(ClassifiedIndiaVO classifiedIndiaVO) throws SQLException {

        Connection conn = null;
        PreparedStatement pstmt = null;

        DbConnection dbConnection = new DbConnection();
        conn = dbConnection.dbConnect();

        Boolean status = classifiedIndiaVO.isClassifiedActiveDeactiveStatus();
        Integer duration = classifiedIndiaVO.getClassifiedBookingDuration();

        if (null != conn) {
            pstmt = conn.prepareStatement("UPDATE classified_adv SET classified_category_id = ?, classified_subject = ?, classified_primary_contact_number = ?, classified_secondary_contact_number = ?, classified_email_id = ?, classified_website_url = ?, classified_contact_person = ?, classified_active_deactive_status = ?, classified_booking_duration = ?, classified_posting_date = now(), classified_expire_date = STR_TO_DATE(?, '%d/%m/%Y'), classified_expire_warning_date = STR_TO_DATE(?, '%d/%m/%Y'), classified_payment_category = ?, classified_sub_category_id = ? WHERE classified_id = ?");
            pstmt.setInt(1, Integer.parseInt(classifiedIndiaVO.getClassifiedCategory()));
            pstmt.setString(2, classifiedIndiaVO.getClassifiedSubject());
            pstmt.setString(3, classifiedIndiaVO.getClassifiedPrimaryContact());
            pstmt.setString(4, classifiedIndiaVO.getClassifiedSecondaryContact());
            pstmt.setString(5, classifiedIndiaVO.getClassifiedEmailId());
            pstmt.setString(6, classifiedIndiaVO.getClassifiedWebUrl());
            pstmt.setString(7, classifiedIndiaVO.getClassifiedContactPerson());
            pstmt.setBoolean(8, status);
            pstmt.setInt(9, duration);
            pstmt.setString(10, classifiedIndiaVO.getClassifiedExpireDate());
            pstmt.setString(11, classifiedIndiaVO.getClassifiedExpireWarrningDate());
            pstmt.setString(12, classifiedIndiaVO.getClassifiedPaymentCategory());
            pstmt.setInt(13, Integer.parseInt(classifiedIndiaVO.getClassifiedSubCategory()));
            pstmt.setInt(14, Integer.parseInt(classifiedIndiaVO.getClassifiedId()));

            pstmt.execute();
            conn.close();
        }
        return true;
    }

    /* public List<ClassifiedIndiaVO> populateClassifiedAdv(String category) {
     List<ClassifiedIndiaVO> listOfClassifiedAdvs = new ArrayList<ClassifiedIndiaVO>();
     Connection conn= null;
     ResultSet rs= null;
     PreparedStatement pstmt= null;

     try {
     DbConnection dbConnection = new DbConnection();
     conn = dbConnection.dbConnect();
     System.out.println(" I am here ......");
     if (null != conn) {
     // String sqlQuery = "select * from classified_adv where classified_category = ?  and classified_sub_category = ?";and classified_primary_contact_number='"+primarycontact+"'";

     String sqlQuery = "select * from classified_adv where classified_category_id='"+category+"'";
     System.out.println(" sqlQuery :" + sqlQuery);
     pstmt = conn.prepareStatement(sqlQuery);


     // pstmt.setString(1, category);
     // pstmt.setString(2, subcategory);

     rs = pstmt.executeQuery();

     while (rs.next()) {
     ClassifiedIndiaVO classifiedIndiaVO = new ClassifiedIndiaVO();
     classifiedIndiaVO.setClassifiedCategory(rs.getString("classified_category_id"));
     classifiedIndiaVO.setClassifiedSubCategory(rs.getString("classified_sub_category_id"));
     classifiedIndiaVO.setClassifiedSubject(rs.getString("classified_subject"));
     classifiedIndiaVO.setClassifiedEmailId(rs.getString("classified_email_id"));
     classifiedIndiaVO.setClassifiedWebUrl(rs.getString("classified_website_url"));
     classifiedIndiaVO.setClassifiedContactPerson(rs.getString("classified_contact_person"));
     classifiedIndiaVO.setClassifiedPrimaryContact(rs.getString("classified_primary_contact_number"));
     classifiedIndiaVO.setClassifiedSecondaryContact(rs.getString("classified_secondary_contact_number"));
     //classifiedIndiaVO.setClassifiedCategory(rs.getString("classified_category"));
     //classifiedIndiaVO.setClassifiedPostingDate(rs.getDate("classified_posting_date"));


     listOfClassifiedAdvs.add(classifiedIndiaVO);
     }
               
     } else {
     System.out.println("Connection Not Found !!!!!!!!!!!");
     }
     } catch (Exception exception) {
     }finally {
     try {
     if(null != rs){
     rs.close();
     }
     if (null != pstmt) {
     pstmt.close();
     }
     if (null != conn) {
     conn.close();
     }
     } catch (SQLException sqlException) {
     }
     }

     return listOfClassifiedAdvs;
     }*/
    
    public ResultVO postCategoryAdv(CategoryVO categoryVO) {
        //List<CategoryVO> listOfClassifiedAdvs = new ArrayList<ClassifiedIndiaVO>();
        Connection conn = null;
        Statement stmt = null;
        ResultVO resultVO = new ResultVO();
        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();

            if (null != conn) {

                String category = categoryVO.getCategory();
                //String subcategory = categoryVO.getSubcategory();
                String sqlQuery = "insert into classified_category (classified_category_name) values('" + category + "')";

                stmt = conn.createStatement();

                System.out.println(" sqlQuery :" + sqlQuery);
                int rowsAffected = stmt.executeUpdate(sqlQuery);

                if (rowsAffected > 0) {
                    System.out.println(" rowsAffected  : " + rowsAffected);
                }

            } else {
                System.out.println(" Connection Not Found !!!!!!!!!!!");
            }
        } catch (Exception exception) {
            System.out.println(" Message : " + exception.getMessage());
            exception.printStackTrace();
        } finally {
            try {
                if (null != stmt) {
                    stmt.close();
                }
                if (null != conn) {
                    conn.close();
                }
            } catch (SQLException exception) {

            }
        }
        return resultVO;
    }

    public void postRegisterADV(UserProfileVO userProfileVO) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultVO resultVO = new ResultVO();
        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();

            if (null != conn) {

                pstmt = conn.prepareStatement("insert into user_profile (user_name,user_password) values(?,?)");
                pstmt.setString(1, userProfileVO.getUsername());
                pstmt.setString(2, userProfileVO.getPassword());
                pstmt.execute();
            } else {
                System.out.println(" Connection Not Found !!!!!!!!!!!");
            }
        } catch (Exception exception) {
            System.out.println(" Message : " + exception.getMessage());
            exception.printStackTrace();
        } finally {
            conn.close();
        }
    }

    public ResultVO postSubcategoryAdv(CategoryVO categoryVO) {
        //List<CategoryVO> listOfClassifiedAdvs = new ArrayList<ClassifiedIndiaVO>();
        Connection conn = null;
        Statement stmt = null;
        ResultVO resultVO = new ResultVO();
        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();

            if (null != conn) {
                String category = categoryVO.getCategory();
                String subcategory = categoryVO.getSubcategoryName();
                String sqlQuery = "insert into classified_sub_category(classified_category,classified_sub_category) values('" + category + "','" + subcategory + "')";

                stmt = conn.createStatement();

                System.out.println(" sqlQuery :" + sqlQuery);
                int rowsAffected = stmt.executeUpdate(sqlQuery);

                if (rowsAffected > 0) {
                    System.out.println(" rowsAffected  : " + rowsAffected);
                }

            } else {
                System.out.println(" Connection Not Found !!!!!!!!!!!");
            }
        } catch (Exception exception) {
            System.out.println(" Message : " + exception.getMessage());
            exception.printStackTrace();
        } finally {
            try {
                if (null != stmt) {
                    stmt.close();
                }
                if (null != conn) {
                    conn.close();
                }
            } catch (SQLException exception) {

            }
        }
        return resultVO;
    }

    public boolean validateUserCredential(String umail, String upass) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean status = false;
        System.out.println("bbbbbbbbbbb");
        UserProfileVO userProfileVO = new UserProfileVO();
        DbConnection dbConnection = new DbConnection();

        conn = dbConnection.dbConnect();
        pstmt = conn.prepareStatement("select * from user_profile where user_name = ? and user_password = ?");
        pstmt.setString(1, umail);
        pstmt.setString(2, upass);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            status = true;
            //userProfileVO.setUsername(rs.getString("user_name"));
            //System.out.println("ddd"+userProfileVO.getUsername());
            //userProfileVO.setPassword(rs.getString("user_password"));
        }
        pstmt.close();
        conn.close();
        return status;
    }
public boolean checkUserCredential(String umail) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean status = false;
        System.out.println("bbbbbbbbbbb");
        UserProfileVO userProfileVO = new UserProfileVO();
        DbConnection dbConnection = new DbConnection();

        conn = dbConnection.dbConnect();
        pstmt = conn.prepareStatement("select * from user_profile where user_name = ?");
        pstmt.setString(1, umail);
        //pstmt.setString(2, upass);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            status = true;
            //userProfileVO.setUsername(rs.getString("user_name"));
            //System.out.println("ddd"+userProfileVO.getUsername());
            //userProfileVO.setPassword(rs.getString("user_password"));
        }
        pstmt.close();
        conn.close();
        return status;
    }
    /*try {
     DbConnection dbConnection = new DbConnection();
     conn = dbConnection.dbConnect();

     if (null != conn) {
     String userName = userProfileVO.getUsername();
     String password = userProfileVO.getPassword();

     String sqlQuery = "select count(*) as user_count from user_profile where user_name='" + userName + "' and user_password ='" + password + "'";
     System.out.println(" sqlQuery : " + sqlQuery);
     stmt = conn.createStatement();
     rs = stmt.executeQuery(sqlQuery);

     if (rs.next()) {
     int userCount = rs.getInt("user_count");
     if (userCount > 0) {
     userFlag = true;
     }
     }

     } else {
     System.out.println(" Connection Not Found !!!!!!!!!!!");
     }
     } catch (Exception exception) {
     System.out.println(" Message : " + exception.getMessage());
     exception.printStackTrace();
     } finally {
     try {
     if (null != rs) {
     rs.close();
     }
     if (null != stmt) {
     stmt.close();
     }
     if (null != conn) {
     conn.close();
     }
     } catch (SQLException exception) {

     }
     }
     return userFlag;*/
    public ArrayList<ClassifiedIndiaVO> populateMyDashlist(String classifiedEmailId) throws SQLException {

        ArrayList<ClassifiedIndiaVO> mydashList = new ArrayList<ClassifiedIndiaVO>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        DbConnection dbConnection = new DbConnection();
        conn = dbConnection.dbConnect();
        pstmt = conn.prepareStatement("SELECT classified_adv.classified_id, classified_adv.classified_category_id, classified_adv.classified_sub_category_id, classified_adv.classified_organization_name, classified_adv.classified_subject, classified_adv.classified_primary_contact_number,classified_adv.classified_secondary_contact_number,classified_adv.classified_email_id,classified_adv.classified_website_url,classified_adv.classified_contact_person,classified_adv.classified_posting_date,classified_adv.classified_expire_date,classified_adv.classified_expire_warning_date,classified_adv.classified_images,classified_category.classified_category_name,classified_sub_category.classified_sub_category_name FROM classifiedindia.classified_adv INNER JOIN classified_category ON classified_category.classified_category_id = classified_adv.classified_category_id INNER JOIN classified_sub_category ON classified_sub_category.classified_sub_category_id = classified_adv.classified_sub_category_id where classified_adv.classified_email_id=? order by classified_adv.classified_posting_date desc");
        pstmt.setString(1, classifiedEmailId);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            ClassifiedIndiaVO classifiedIndiaVO = new ClassifiedIndiaVO();
            DateConversion dateconnversion = new DateConversion();

            classifiedIndiaVO.setClassifiedId(String.valueOf(rs.getInt("classified_id")));
            classifiedIndiaVO.setClassifiedCategory(String.valueOf(rs.getInt("classified_category_id")));
            classifiedIndiaVO.setClassifiedCategoryName(rs.getString("classified_category_name"));
            classifiedIndiaVO.setClassifiedSubCategory(String.valueOf(rs.getInt("classified_sub_category_id")));
            classifiedIndiaVO.setClassifiedSubCategoryName(rs.getString("classified_sub_category_name"));
            classifiedIndiaVO.setClassifiedSubject(rs.getString("classified_subject"));
            classifiedIndiaVO.setClassifiedEmailId(rs.getString("classified_email_id"));
            classifiedIndiaVO.setClassifiedPrimaryContact(rs.getString("classified_primary_contact_number"));
            classifiedIndiaVO.setClassifiedSecondaryContact(rs.getString("classified_secondary_contact_number"));
            classifiedIndiaVO.setClassifiedContactPerson(rs.getString("classified_contact_person"));
            classifiedIndiaVO.setClassifiedWebUrl(rs.getString("classified_website_url"));
            classifiedIndiaVO.setClassifiedImageId(rs.getDouble("classified_images"));
            System.out.println("gfh" + classifiedIndiaVO.getClassifiedImageId());
/*
            String newpost = dateconnversion.convertDbDate(rs.getString("classified_posting_date"));
            classifiedIndiaVO.setClassifiedPostingDate(newpost);

            String newexp = dateconnversion.convertDbDate(rs.getString("classified_expire_date"));
            classifiedIndiaVO.setClassifiedExpireDate(newexp);

            String newexpwarn = dateconnversion.convertDbDate(rs.getString("classified_expire_warning_date"));
            classifiedIndiaVO.setClassifiedExpireWarrningDate(newexpwarn);
*/
            classifiedIndiaVO.setClassifiedOrganizationName(rs.getString("classified_organization_name"));
            mydashList.add(classifiedIndiaVO);
        }
        pstmt.close();
        conn.close();
        return mydashList;
    }

    public List<ClassifiedIndiaVO> populateClassifiedAdv2(String category) {
        List<ClassifiedIndiaVO> listofClassifiedAdvs = new ArrayList<ClassifiedIndiaVO>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();
            if (null != conn) {
                String sqlQuery = "select cn.country_name, loc.location_name, csc.classified_sub_category_name, cadv.classified_subject, cadv.classified_title, cadv.classified_organization_name, cadv.classified_id from classified_adv  cadv,country_name cn ,location_name loc, classified_sub_category csc  where  cadv.country_code= cn.country_code and  cadv.location_id = loc.location_id and cadv.classified_sub_category_id = csc.classified_sub_category_id and cadv.classified_category_id='1'";
                pstmt = conn.prepareStatement(sqlQuery);
                rs = pstmt.executeQuery();

                while (rs.next()) {
                    ClassifiedIndiaVO classifiedIndiaVO = new ClassifiedIndiaVO();

                    classifiedIndiaVO.setCountryName(rs.getString("country_name"));
                    classifiedIndiaVO.setClassifiedSubCategoryName(rs.getString("classified_sub_category_name"));
                    classifiedIndiaVO.setLocationName(rs.getString("location_name"));
                    classifiedIndiaVO.setClassifiedSubject(rs.getString("classified_subject"));
                    classifiedIndiaVO.setClassifiedTitle(rs.getString("classified_title"));
                    classifiedIndiaVO.setClassifiedOrganizationName(rs.getString("classified_organization_name"));
                    classifiedIndiaVO.setClassifiedId(rs.getString("classified_id"));
                    //  classifiedIndiaVO.setClassifiedCategory(rs.getString("classified_category_id"));
                    listofClassifiedAdvs.add(classifiedIndiaVO);
                }
            } else {
                System.out.println("connetion not");
            }
        } catch (Exception exception) {
            System.out.println("exception" + exception.getMessage());

        } finally {
            try {
                if (null != rs) {
                    rs.close();
                }
                if (null != pstmt) {
                    pstmt.close();
                }
                if (null != conn) {
                    conn.close();
                }

            } catch (Exception exception) {

            }

        }
        return listofClassifiedAdvs;
    }

    public List<ClassifiedIndiaVO> populateClassifiedAdv3(String category) {
        List<ClassifiedIndiaVO> listofClassifiedAdvs = new ArrayList<ClassifiedIndiaVO>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();
            if (null != conn) {
                String sqlQuery = "select * from classified_adv where classified_category_id='" + category + "'";
                pstm = conn.prepareStatement(sqlQuery);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    ClassifiedIndiaVO classifiedIndiaVO = new ClassifiedIndiaVO();
                    classifiedIndiaVO.setClassifiedContactPerson(rs.getString("classified_contact_person"));
                    classifiedIndiaVO.setClassifiedPostingDate(rs.getString("classified_posting_date"));
                    classifiedIndiaVO.setClassifiedExpireDate(rs.getString("classified_expire_date"));
                    listofClassifiedAdvs.add(classifiedIndiaVO);

                }
            } else {
                System.out.println("Connection not found");
            }

        } catch (Exception exception) {

        } finally {
            try {
                if (null != rs) {
                    rs.close();
                }
                if (null != pstm) {
                    pstm.close();
                }
                if (null != conn) {
                    conn.close();
                }
            } catch (Exception exception) {

            }
        }

        return listofClassifiedAdvs;

    }

    public List<ClassifiedIndiaVO> populateClassifiedAdv4(String category) {
        List<ClassifiedIndiaVO> listofClassifiedAdvs = new ArrayList<ClassifiedIndiaVO>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
            DbConnection dbConnection = new DbConnection();
            conn = dbConnection.dbConnect();
            if (null != conn) {
                String sqlQuery = "select * from classified_adv where classified_category_id='" + category + "'";
                pstm = conn.prepareStatement(sqlQuery);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    ClassifiedIndiaVO classifiedIndiaVO = new ClassifiedIndiaVO();

                    classifiedIndiaVO.setClassifiedContactPerson(rs.getString("classified_contact_person"));
                    classifiedIndiaVO.setClassifiedPostingDate(rs.getString("classified_posting_date"));
                    classifiedIndiaVO.setClassifiedExpireDate(rs.getString("classified_expire_date"));

                    listofClassifiedAdvs.add(classifiedIndiaVO);

                }
            } else {
                System.out.println("Connection not found");
            }

        } catch (Exception exception) {

        } finally {
            try {
                if (null != rs) {
                    rs.close();
                }
                if (null != pstm) {
                    pstm.close();
                }
                if (null != conn) {
                    conn.close();
                }
            } catch (Exception exception) {

            }
        }

        return listofClassifiedAdvs;

    }

    public static byte[] getSmallPhoto(String imageId) throws Exception, SQLException {

        DbConnection dbcon = new DbConnection();
        Connection conn = dbcon.dbConnect();
        String req = "";
        Blob img;
        byte[] imgData = null;
        Statement stmt = conn.createStatement();
        // Query
        req = "select classified_images from classified_adv where classified_id='" + imageId + "'";
        System.out.println(" Req : " + req);
        ResultSet rset = stmt.executeQuery(req);
        while (rset.next()) {
            //  img = rset.getBlob(1);
            img = rset.getBlob("classified_images");
            imgData = img.getBytes(1, (int) img.length());
        }
        rset.close();
        stmt.close();
        return imgData;
    }

    public ClassifiedImageVO populatePhoto(String imageId) throws Exception, SQLException {
        //List<ClassifiedImageVO> listOfClassifiedImage  = new ArrayList<ClassifiedImageVO>();
        ClassifiedImageVO classifiedImageVO = new ClassifiedImageVO();
        String req = "";
        DbConnection dbcon = new DbConnection();

        try {
            Connection conn = dbcon.dbConnect();
            Statement stmt = conn.createStatement();

            ResultSet rset = stmt.executeQuery("select classified_image_id, classified_small_image from classified_adv cadv , classified_adv_photo cadvphoto where cadv.classified_id  = cadvphoto.classified_id and  cadvphoto.classified_image_id =" + imageId);
            while (rset.next()) {

                classifiedImageVO.setClassfiedPhotoId(rset.getString("classified_image_id"));
                classifiedImageVO.setSmallImages(rset.getBlob("classified_small_image").getBytes(1, (int) rset.getBlob("classified_small_image").length()));
            }
        } catch (Exception e) {

        }

        return classifiedImageVO;
    }

    public ClassifiedImageVO populateLargePhoto(String imageId) throws Exception, SQLException {
        //List<ClassifiedImageVO> listOfClassifiedImage  = new ArrayList<ClassifiedImageVO>();
        ClassifiedImageVO classifiedImageVO = new ClassifiedImageVO();
        String req = "";
        DbConnection dbcon = new DbConnection();

        try {
            Connection conn = dbcon.dbConnect();
            Statement stmt = conn.createStatement();

            ResultSet rset = stmt.executeQuery("select classified_image_id, classified_large_image from classified_adv cadv , classified_adv_photo cadvphoto where cadv.classified_id  = cadvphoto.classified_id and  cadvphoto.classified_image_id =" + imageId);
            while (rset.next()) {

                classifiedImageVO.setClassfiedPhotoId(rset.getString("classified_image_id"));
                classifiedImageVO.setSmallImages(rset.getBlob("classified_large_image").getBytes(1, (int) rset.getBlob("classified_large_image").length()));
            }
        } catch (Exception e) {

        }

        return classifiedImageVO;
    }

    //test
    public void test() throws Exception, SQLException {
        //List<ClassifiedImageVO> listOfClassifiedImage  = new ArrayList<ClassifiedImageVO>();
        ClassifiedImageVO classifiedImageVO = new ClassifiedImageVO();
        DbConnection dbcon = new DbConnection();

        try {
            Connection conn = dbcon.dbConnect();
            Statement stmt = conn.createStatement();
            String s = "I want a dance";

            ResultSet rset = stmt.executeQuery("SELECT classified_adv.classified_id, classified_adv.classified_category_id, classified_adv.classified_sub_category_id, classified_adv.classified_organization_name, classified_adv.classified_subject, classified_adv.classified_primary_contact_number,classified_adv.classified_secondary_contact_number,classified_adv.classified_email_id,classified_adv.classified_website_url,classified_adv.classified_contact_person,classified_adv.classified_posting_date,classified_adv.classified_expire_date,classified_adv.classified_expire_warning_date,classified_category.classified_category_name,classified_sub_category.classified_sub_category_name FROM classifiedindia.classified_adv INNER JOIN classified_category ON classified_category.classified_category_id = classified_adv.classified_category_id INNER JOIN classified_sub_category ON classified_sub_category.classified_sub_category_id = classified_adv.classified_sub_category_id where classified_category.classified_category_name='Computer' or classified_sub_category.classified_sub_category_name='Dance and Music Classes' or classified_adv.classified_subject='I want a dance teacher'");
            while (rset.next()) {
                //String s1 = rset.getString("classified_category_name");
                //System.out.println(s1);
                //String s2 = rset.getString("classified_sub_category_name");
                //System.out.println(s2);
                String s3 = rset.getString("classified_subject");
                System.out.println(s3.subSequence(0, 9));
                //System.out.println(s.contains(s3.toString()));
                System.out.println("rrrrrr" + s.contains(s3));

                //System.out.println(s.contains(rset.getString("classified_category_name")));
                //System.out.println(s.contains(rset.getString("classified_sub_category_name")));
                //System.out.println(s.contains(rset.getString("classified_subject")));
            }
        } catch (Exception e) {

        }

        //return classifiedImageVO;
    }

    //test
    public static void main(String[] args) throws Exception {
        ClassifiedModel c = new ClassifiedModel();
        c.test();
    }
}
