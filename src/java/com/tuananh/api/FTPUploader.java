/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.api;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.net.ftp.FTPClient;

/**
 *
 * @author ngotu
 */
public class FTPUploader {

    private final static Logger LOGGER = Logger.getLogger(FTPUploader.class.getCanonicalName());

    public String upload(String filename, FileInputStream fis) {
        FTPClient client = new FTPClient();
        String endPoint = "https://projectprj321.netfi.me/";
        try {
            client.connect("netfi.me");
            client.login("tuananh@netfi.me", "HuongAnh1509");
            client.storeFile(filename, fis);
            client.logout();
            LOGGER.log(Level.INFO, "Upload successfully!");
            return endPoint + filename;
        } catch (IOException e) {
            LOGGER.log(Level.INFO, "Upload faild !\nError message: {0}", e.getMessage());
            return null;
        } finally {
            try {
                if (fis != null) {
                    fis.close();
                }
                client.disconnect();
            } catch (IOException e) {
            }
        }
    }

    public static void main(String[] args) throws FileNotFoundException {
//        String filename = "nta.txt";
//        FileInputStream fis = new FileInputStream(new File(filename));
//        FTPUploader fu = new FTPUploader();
//        System.out.println(fu.upload(filename, fis));    
    }
}
