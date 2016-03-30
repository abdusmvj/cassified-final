package com.classified.randomclass;

import com.classifiedindia.servlet.UploadServlet;

public class RandomClass extends UploadServlet{
     protected void givenUsingPlainJava_whenGeneratingRandomFloatBouned_thenCorrect() {
        float leftLimit = 2F;
        float rightLimit = 10F;
        float generatedFloat = leftLimit + new java.util.Random().nextFloat() * (rightLimit - leftLimit);
        System.out.println(generatedFloat);
    }
     public static void main(String[] args) {
        RandomClass rc = new RandomClass();
        rc.givenUsingPlainJava_whenGeneratingRandomFloatBouned_thenCorrect();
    }
}
