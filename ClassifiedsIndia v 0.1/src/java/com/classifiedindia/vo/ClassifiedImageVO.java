/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.classifiedindia.vo;

/**
 *
 * @author Amzad
 */
public class ClassifiedImageVO {
    private String classfiedPhotoId;
    private byte[] smallImages;
    private byte[] largeImages;


    /**
     * @return the smallImages
     */
    public byte[] getSmallImages() {
        return smallImages;
    }

    /**
     * @param smallImages the smallImages to set
     */
    public void setSmallImages(byte[] smallImages) {
        this.smallImages = smallImages;
    }

    /**
     * @return the largeImages
     */
    public byte[] getLargeImages() {
        return largeImages;
    }

    /**
     * @param largeImages the largeImages to set
     */
    public void setLargeImages(byte[] largeImages) {
        this.largeImages = largeImages;
    }

    /**
     * @return the classfiedPhotoId
     */
    public String getClassfiedPhotoId() {
        return classfiedPhotoId;
    }

    /**
     * @param classfiedPhotoId the classfiedPhotoId to set
     */
    public void setClassfiedPhotoId(String classfiedPhotoId) {
        this.classfiedPhotoId = classfiedPhotoId;
    }

    


}
