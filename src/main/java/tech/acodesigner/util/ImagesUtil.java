package tech.acodesigner.util;

import java.io.File;


public class ImagesUtil {

    public static String[] getImages(String path) {
        File imagesFolder = new File(path);
        String[] images = imagesFolder.list();
        return images;
    }

}
