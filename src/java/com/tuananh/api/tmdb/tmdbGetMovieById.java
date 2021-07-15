/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.api.tmdb;

import com.tuananh.api.imgur.StatusCode;
import com.tuananh.api.imgur.WebException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;

/**
 *
 * @author ngotu
 */
public class tmdbGetMovieById {
    public static final String UPLOAD_API_URL = "https://api.themoviedb.org/3/movie/";
    private final static String API_KEY = "?api_key=a95e4c9d5361788f432f1d2393278ec5";

    public static String getMovieData(int id) {
        String url = UPLOAD_API_URL + id + API_KEY;
        HttpURLConnection conn = getHttpConnection(url);
        return getResponse(conn);
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
            conn.setDoOutput(true);
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.connect();
            return conn;
        } catch (UnknownHostException e) {
            throw new WebException(StatusCode.UNKNOWN_HOST, e);
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
    
    public static void main(String[] args) {
        System.err.println(getMovieData(588228));
    }
}
