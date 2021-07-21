/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.api.imgur;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.Part;
import javax.xml.bind.DatatypeConverter;

/**
 *
 * @author ngotu
 */
public class imgurUploader {

    public static final String UPLOAD_API_URL = "https://api.imgur.com/3/image";
    public static final int MAX_UPLOAD_ATTEMPTS = 3;
    private final static String CLIENT_ID = "a87c19837bb8f93";
    private final static Logger LOGGER = Logger.getLogger(imgurUploader.class.getCanonicalName());

    public static String upload(File file) {
        HttpURLConnection conn = getHttpConnection(UPLOAD_API_URL);
        writeToConnection(conn, "image=" + toBase64(file));
        return getResponse(conn);
    }

    /**
     * Converts a file to a Base64 String.
     *
     * @param file The file to be converted.
     * @return The file as a Base64 String.
     */
    private static String toBase64(File file) {
        try {
            byte[] b = new byte[(int) file.length()];
            FileInputStream fs = new FileInputStream(file);
            fs.read(b);
            fs.close();
            return URLEncoder.encode(DatatypeConverter.printBase64Binary(b), "UTF-8");
        } catch (IOException e) {
            throw new WebException(StatusCode.UNKNOWN_ERROR, e);
        }
    }

    /**
     * Creates and sets up an HttpURLConnection for use with the Imgur API.
     *
     * @param url The URL to connect to. (check Imgur API for correct URL).
     * @return The newly created HttpURLConnection.
     */
    private static HttpURLConnection getHttpConnection(String url) {
        HttpURLConnection conn;
        try {
            conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setDoInput(true);
            conn.setDoOutput(true);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Authorization", "Client-ID " + CLIENT_ID);
            conn.setReadTimeout(100000);
            conn.connect();
            return conn;
        } catch (UnknownHostException e) {
            throw new WebException(StatusCode.UNKNOWN_HOST, e);
        } catch (IOException e) {
            throw new WebException(StatusCode.UNKNOWN_ERROR, e);
        }
    }

    /**
     * Sends the provided message to the connection as uploaded data.
     *
     * @param conn The connection to send the data to.
     * @param message The data to upload.
     */
    private static void writeToConnection(HttpURLConnection conn, String message) {
        OutputStreamWriter writer;
        try {
            writer = new OutputStreamWriter(conn.getOutputStream());
            writer.write(message);
            writer.flush();
            writer.close();
        } catch (IOException e) {
            throw new WebException(StatusCode.UNKNOWN_ERROR, e);
        }
    }

    /**
     * Gets the response from the connection, Usually in the format of a JSON
     * string.
     *
     * @param conn The connection to listen to.
     * @return The response, usually as a JSON string.
     */
    private static String getResponse(HttpURLConnection conn) {
        StringBuilder str = new StringBuilder();
        BufferedReader reader;
        try {
            if (conn.getResponseCode() != StatusCode.SUCCESS.getHttpCode()) {
                throw new WebException(conn.getResponseCode());
            }
            reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                str.append(line);
            }
            reader.close();
        } catch (IOException e) {
            throw new WebException(StatusCode.UNKNOWN_ERROR, e);
        }
        if (str.toString().equals("")) {
            throw new WebException(StatusCode.UNKNOWN_ERROR);
        }
        return str.toString();
    }

//    public static void main(String[] args) {
//        File file = new File("C:\\Users\\ngotu\\Downloads\\logo.png");
//        String json = upload(file);
//        String path = imgurJson.imgurLink(json);
//        System.out.println(path);
//    }
    public static String getImgLink(String filePath) {
        File file = new File(filePath);
        String json = upload(file);
        String path = imgurJson.imgurLink(json);
        return path;
    }

    public String uploadAndGetLink(final Part filePart) throws IOException {
        final String path = "E:\\tmp\\";
//        final Part filePart = request.getPart("file");
        final String fileName = getFileName(filePart);
        String finalFilePath = null;

        OutputStream out = null;
        InputStream filecontent = null;

        try {
            out = new FileOutputStream(new File(path + File.separator
                    + fileName));
            filecontent = filePart.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[1024];

            while ((read = filecontent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }
            finalFilePath = path + fileName;
            return getImgLink(finalFilePath);
        } catch (FileNotFoundException fne) {
            LOGGER.log(Level.SEVERE, "Problems during file upload. Error: {0}",
                    new Object[]{fne.getMessage()});
        } finally {
            if (out != null) {
                out.close();
            }
            if (filecontent != null) {
                filecontent.close();
            }
            if (finalFilePath != null) {
                Files.delete(Paths.get(finalFilePath));
                LOGGER.log(Level.INFO, "Delete file from " + path + " successfully!");
            }
        }
        return null;
    }

    private static String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        LOGGER.log(Level.INFO, "Part Header = {0}", partHeader);
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
