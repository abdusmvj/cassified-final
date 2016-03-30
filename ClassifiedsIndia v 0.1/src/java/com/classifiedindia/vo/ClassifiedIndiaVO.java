package com.classifiedindia.vo;

import java.util.Date;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionMapping;

public class ClassifiedIndiaVO {

    private String classifiedId;
    private String classifiedCategory;
    private String classifiedCategoryName;
    private String classifiedTitle;
    private String classifiedSubject;
    private String classifiedPrimaryContact;
    private String classifiedSecondaryContact;
    private String classifiedEmailId;
    private String classifiedWebUrl;
    private String classifiedContactPerson;
    private boolean classifiedActiveDeactiveStatus;
    private int classifiedBookingDuration;
    private String classifiedPostingDate;
    private String classifiedExpireDate;
    private String classifiedExpireWarrningDate;
    private String classifiedPaymentCategory;
    private String classifiedSubCategory;
    private String classifiedSubCategoryName;
    private String coutryCode;
    private String locationId;
    private String countryName;
    private String locationName;
    private String classifiedOrganizationName;
    private double classifiedImageId;
    private String searchWord;
    private String subcatlist;

    public String getSubcatlist() {
        return subcatlist;
    }

    public void setSubcatlist(String subcatlist) {
        this.subcatlist = subcatlist;
    }

    public String getSearchWord() {
        return searchWord;
    }

    public void setSearchWord(String searchWord) {
        this.searchWord = searchWord;
    }

    public String getClassifiedId() {
        return classifiedId;
    }

    /**
     * @param classifiedId the classifiedId to set
     */
    public void setClassifiedId(String classifiedId) {
        this.classifiedId = classifiedId;
    }

    /**
     * @return the classifiedCategory
     */
    public String getClassifiedCategory() {
        return classifiedCategory;
    }

    /**
     * @param classifiedCategory the classifiedCategory to set
     */
    public void setClassifiedCategory(String classifiedCategory) {
        this.classifiedCategory = classifiedCategory;
    }

    public String getClassifiedCategoryName() {
        return classifiedCategoryName;
    }

    public void setClassifiedCategoryName(String classifiedCategoryName) {
        this.classifiedCategoryName = classifiedCategoryName;
    }

    /**
     * @return the classifiedSubject
     */
    public String getClassifiedSubject() {
        return classifiedSubject;
    }

    /**
     * @param classifiedSubject the classifiedSubject to set
     */
    public void setClassifiedSubject(String classifiedSubject) {
        this.classifiedSubject = classifiedSubject;
    }

    /**
     * @return the classifiedPrimaryContact
     */
    public String getClassifiedPrimaryContact() {
        return classifiedPrimaryContact;
    }

    /**
     * @param classifiedPrimaryContact the classifiedPrimaryContact to set
     */
    public void setClassifiedPrimaryContact(String classifiedPrimaryContact) {
        this.classifiedPrimaryContact = classifiedPrimaryContact;
    }

    /**
     * @return the classifiedSecondaryContact
     */
    public String getClassifiedSecondaryContact() {
        return classifiedSecondaryContact;
    }

    /**
     * @param classifiedSecondaryContact the classifiedSecondaryContact to set
     */
    public void setClassifiedSecondaryContact(String classifiedSecondaryContact) {
        this.classifiedSecondaryContact = classifiedSecondaryContact;
    }

    /**
     * @return the classifiedEmailId
     */
    public String getClassifiedEmailId() {
        return classifiedEmailId;
    }

    /**
     * @param classifiedEmailId the classifiedEmailId to set
     */
    public void setClassifiedEmailId(String classifiedEmailId) {
        this.classifiedEmailId = classifiedEmailId;
    }

    /**
     * @return the classifiedWebUrl
     */
    public String getClassifiedWebUrl() {
        return classifiedWebUrl;
    }

    /**
     * @param classifiedWebUrl the classifiedWebUrl to set
     */
    public void setClassifiedWebUrl(String classifiedWebUrl) {
        this.classifiedWebUrl = classifiedWebUrl;
    }

    /**
     * @return the classifiedContactPerson
     */
    public String getClassifiedContactPerson() {
        return classifiedContactPerson;
    }

    /**
     * @param classifiedContactPerson the classifiedContactPerson to set
     */
    public void setClassifiedContactPerson(String classifiedContactPerson) {
        this.classifiedContactPerson = classifiedContactPerson;
    }

    /**
     * @return the classifiedActiveDeactiveStatus
     */
    public boolean isClassifiedActiveDeactiveStatus() {
        return classifiedActiveDeactiveStatus;
    }

    /**
     * @param classifiedActiveDeactiveStatus the classifiedActiveDeactiveStatus
     * to set
     */
    public void setClassifiedActiveDeactiveStatus(boolean classifiedActiveDeactiveStatus) {
        this.classifiedActiveDeactiveStatus = classifiedActiveDeactiveStatus;
    }

    /**
     * @return the classifiedBookingDuration
     */
    public int getClassifiedBookingDuration() {
        return classifiedBookingDuration;
    }

    /**
     * @param classifiedBookingDuration the classifiedBookingDuration to set
     */
    public void setClassifiedBookingDuration(int classifiedBookingDuration) {
        this.classifiedBookingDuration = classifiedBookingDuration;
    }

    /**
     * @return the classifiedPaymentCategory
     */
    public String getClassifiedPaymentCategory() {
        return classifiedPaymentCategory;
    }

    /**
     * @param classifiedPaymentCategory the classifiedPaymentCategory to set
     */
    public void setClassifiedPaymentCategory(String classifiedPaymentCategory) {
        this.classifiedPaymentCategory = classifiedPaymentCategory;
    }

    /**
     * @return the classifiedSubCategory
     */
    public String getClassifiedSubCategory() {
        return classifiedSubCategory;
    }

    /**
     * @param classifiedSubCategory the classifiedSubCategory to set
     */
    public void setClassifiedSubCategory(String classifiedSubCategory) {
        this.classifiedSubCategory = classifiedSubCategory;
    }

    /**
     * @return the classifiedPostingDate
     */
    /**
     * @return the classifiedExpireDate
     */
    public String getClassifiedExpireDate() {
        return classifiedExpireDate;
    }

    /**
     * @param classifiedExpireDate the classifiedExpireDate to set
     */
    public void setClassifiedExpireDate(String classifiedExpireDate) {
        this.classifiedExpireDate = classifiedExpireDate;
    }

    /**
     * @return the classifiedExpireWarrningDate
     */
    public String getClassifiedExpireWarrningDate() {
        return classifiedExpireWarrningDate;
    }

    /**
     * @param classifiedExpireWarrningDate the classifiedExpireWarrningDate to
     * set
     */
    public void setClassifiedExpireWarrningDate(String classifiedExpireWarrningDate) {
        this.classifiedExpireWarrningDate = classifiedExpireWarrningDate;
    }

    /**
     * @return the classifiedPostingDate
     */
    public String getClassifiedPostingDate() {
        return classifiedPostingDate;
    }

    /**
     * @param classifiedPostingDate the classifiedPostingDate to set
     */
    public void setClassifiedPostingDate(String classifiedPostingDate) {
        this.classifiedPostingDate = classifiedPostingDate;
    }

    /**
     * @return the classifiedTitle
     */
    public String getClassifiedTitle() {
        return classifiedTitle;
    }

    /**
     * @param classifiedTitle the classifiedTitle to set
     */
    public void setClassifiedTitle(String classifiedTitle) {
        this.classifiedTitle = classifiedTitle;
    }

    /**
     * @return the coutryCode
     */
    public String getCoutryCode() {
        return coutryCode;
    }

    /**
     * @param coutryCode the coutryCode to set
     */
    public void setCoutryCode(String coutryCode) {
        this.coutryCode = coutryCode;
    }

    /**
     * @return the locationId
     */
    public String getLocationId() {
        return locationId;
    }

    /**
     * @param locationId the locationId to set
     */
    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    /**
     * @return the countryName
     */
    public String getCountryName() {
        return countryName;
    }

    /**
     * @param countryName the countryName to set
     */
    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    /**
     * @return the locationName
     */
    public String getLocationName() {
        return locationName;
    }

    /**
     * @param locationName the locationName to set
     */
    public void setLocationName(String locationName) {
        this.locationName = locationName;
    }

    /**
     * @return the classifiedSubCategoryName
     */
    public String getClassifiedSubCategoryName() {
        return classifiedSubCategoryName;
    }

    /**
     * @param classifiedSubCategoryName the classifiedSubCategoryName to set
     */
    public void setClassifiedSubCategoryName(String classifiedSubCategoryName) {
        this.classifiedSubCategoryName = classifiedSubCategoryName;
    }

    /**
     * @return the classifiedOrganizationName
     */
    public String getClassifiedOrganizationName() {
        return classifiedOrganizationName;
    }

    /**
     * @param classifiedOrganizationName the classifiedOrganizationName to set
     */
    public void setClassifiedOrganizationName(String classifiedOrganizationName) {
        this.classifiedOrganizationName = classifiedOrganizationName;
    }

    /**
     * @return the classifiedImage
     */
    public double getClassifiedImageId() {
        return classifiedImageId;
    }

    /**
     * @param classifiedImage the classifiedImage to set
     */
    public void setClassifiedImageId(double classifiedImageId) {
        this.classifiedImageId = classifiedImageId;
    }

    /**
     * @return the classifiedPostingDate
     */
}

