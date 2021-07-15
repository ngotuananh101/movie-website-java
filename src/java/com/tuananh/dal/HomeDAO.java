/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.dal;

import com.tuananh.model.Category;
import com.tuananh.model.LiveTV;
import com.tuananh.model.Movie;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ngotu
 */
public class HomeDAO extends DBContext {

    public List<Movie> getRandomMovie() {
        List<Movie> listmo = new ArrayList<>();
        String sql = "SELECT TOP (3) [id]\n"
                + "      ,[tmdb_id]\n"
                + "      ,[title]\n"
                + "      ,[overview]\n"
                + "      ,[poster]\n"
                + "      ,[backdrop]\n"
                + "      ,[vote_average]\n"
                + "      ,[vote_count]\n"
                + "      ,[views]\n"
                + "      ,[runtime]\n"
                + "      ,[release_date]\n"
                + "      ,[create_at]\n"
                + "      ,[video_link]\n"
                + "      ,[quality]\n"
                + "      ,[category_id]\n"
                + "  FROM [Netflix].[dbo].[Movies]\n"
                + "  ORDER BY newid()";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int tmdb_id = rs.getInt("tmdb_id");
                String title = rs.getString("title");
                String overview = rs.getString("overview");
                String poster = rs.getString("poster");
                String backdrop = rs.getString("backdrop");
                float vote = (float) Math.round(rs.getFloat("vote_average") * 10) / 10;
                float vote_average = vote;
                int vote_count = rs.getInt("vote_count");
                int views = rs.getInt("views");
                int runtime = rs.getInt("runtime");
                String release_date = rs.getString("release_date");
                String create_at = rs.getString("create_at");
                String video_link = rs.getString("video_link");
                String quality = rs.getString("quality");
                int category_id = rs.getInt("category_id");
                Movie m = new Movie(id, tmdb_id, title, overview, poster, backdrop, vote_average, vote_count, views, runtime, release_date, create_at, video_link, quality, category_id);
                listmo.add(m);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listmo;
    }

    public List<Movie> getNewMovie() {
        List<Movie> listmo = new ArrayList<>();
        String sql = "SELECT TOP (10) [id]\n"
                + "      ,[tmdb_id]\n"
                + "      ,[title]\n"
                + "      ,[overview]\n"
                + "      ,[poster]\n"
                + "      ,[backdrop]\n"
                + "      ,[vote_average]\n"
                + "      ,[vote_count]\n"
                + "      ,[views]\n"
                + "      ,[runtime]\n"
                + "      ,[release_date]\n"
                + "      ,[create_at]\n"
                + "      ,[video_link]\n"
                + "      ,[quality]\n"
                + "      ,[category_id]\n"
                + "  FROM [Movies]\n"
                + "  ORDER BY  [create_at] DESC";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int tmdb_id = rs.getInt("tmdb_id");
                String title = rs.getString("title");
                String overview = rs.getString("overview");
                String poster = rs.getString("poster");
                String backdrop = rs.getString("backdrop");
                float vote = (float) Math.round(rs.getFloat("vote_average") * 10) / 10;
                float vote_average = vote;
                int vote_count = rs.getInt("vote_count");
                int views = rs.getInt("views");
                int runtime = rs.getInt("runtime");
                String release_date = rs.getString("release_date");
                String create_at = rs.getString("create_at");
                String video_link = rs.getString("video_link");
                String quality = rs.getString("quality");
                int category_id = rs.getInt("category_id");
                Movie m = new Movie(id, tmdb_id, title, overview, poster, backdrop, vote_average, vote_count, views, runtime, release_date, create_at, video_link, quality, category_id);
                listmo.add(m);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listmo;
    }

    public List<Movie> getTop10Movie() {
        List<Movie> listmo = new ArrayList<>();
        String sql = "SELECT TOP (10) [id]\n"
                + "      ,[tmdb_id]\n"
                + "      ,[title]\n"
                + "      ,[overview]\n"
                + "      ,[poster]\n"
                + "      ,[backdrop]\n"
                + "      ,[vote_average]\n"
                + "      ,[vote_count]\n"
                + "      ,[views]\n"
                + "      ,[runtime]\n"
                + "      ,[release_date]\n"
                + "      ,[create_at]\n"
                + "      ,[video_link]\n"
                + "      ,[quality]\n"
                + "      ,[category_id]\n"
                + "  FROM [Movies]\n"
                + "  ORDER BY  [vote_average] DESC";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int tmdb_id = rs.getInt("tmdb_id");
                String title = rs.getString("title");
                String overview = rs.getString("overview");
                String poster = rs.getString("poster");
                String backdrop = rs.getString("backdrop");
                float vote = (float) Math.round(rs.getFloat("vote_average") * 10) / 10;
                float vote_average = vote;
                int vote_count = rs.getInt("vote_count");
                int views = rs.getInt("views");
                int runtime = rs.getInt("runtime");
                String release_date = rs.getString("release_date");
                String create_at = rs.getString("create_at");
                String video_link = rs.getString("video_link");
                String quality = rs.getString("quality");
                int category_id = rs.getInt("category_id");
                Movie m = new Movie(id, tmdb_id, title, overview, poster, backdrop, vote_average, vote_count, views, runtime, release_date, create_at, video_link, quality, category_id);
                listmo.add(m);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listmo;
    }

    public List<LiveTV> getChannel() {
        List<LiveTV> listmo = new ArrayList<>();
        String sql = "SELECT TOP(10) [id]\n"
                + "      ,[title]\n"
                + "      ,[description]\n"
                + "      ,[image]\n"
                + "      ,[link]\n"
                + "  FROM [dbo].[LiveTV]";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                String des = rs.getString("description");
                String image = rs.getString("image");
                String link = rs.getString("link");
                LiveTV tv = new LiveTV(id, title, image, des, link);
                listmo.add(tv);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listmo;
    }
}
