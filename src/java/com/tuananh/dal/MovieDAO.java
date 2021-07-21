/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.dal;

import com.tuananh.model.Movie;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ngotu
 */
public class MovieDAO extends DBContext {

    public Movie getMovieInfo(int mvid) {
        Movie mv = new Movie();
        String sql = "SELECT [id]\n"
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
                + "  FROM [dbo].[Movies]"
                + "  WHERE [id] = ?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setInt(1, mvid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int tmdb_id = rs.getInt("tmdb_id");
                String title = rs.getString("title");
                String overview = rs.getString("overview");
                String poster = rs.getString("poster");
                String backdrop = rs.getString("backdrop");
                float vote_average = rs.getFloat("vote_average");
                int vote_count = rs.getInt("vote_count");
                int views = rs.getInt("views");
                int runtime = rs.getInt("runtime");
                String release_date = rs.getString("release_date");
                String create_at = rs.getString("create_at");
                String video_link = rs.getString("video_link");
                String quality = rs.getString("quality");
                int category_id = rs.getInt("category_id");
                mv = new Movie(id, tmdb_id, title, overview, poster, backdrop, vote_average, vote_count, views, runtime, release_date, create_at, video_link, quality, category_id);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return mv;
    }

    public List<Movie> getAllMovie() {
        List<Movie> listmo = new ArrayList<>();
        String sql = "SELECT [id]\n"
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
                + "  FROM [dbo].[Movies]";
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
                float vote_average = rs.getFloat("vote_average");
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

    public void addMovie(Movie movie) {
        String sql = "INSERT INTO [dbo].[Movies]\n"
                + "           ([tmdb_id]\n"
                + "           ,[title]\n"
                + "           ,[overview]\n"
                + "           ,[poster]\n"
                + "           ,[backdrop]\n"
                + "           ,[vote_average]\n"
                + "           ,[vote_count]\n"
                + "           ,[views]\n"
                + "           ,[runtime]\n"
                + "           ,[release_date]\n"
                + "           ,[create_at]\n"
                + "           ,[video_link]\n"
                + "           ,[quality]\n"
                + "           ,[category_id])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setInt(1, movie.getTmdb_od());
            st.setString(2, movie.getTitle());
            st.setString(3, movie.getOverview());
            st.setString(4, movie.getPoster());
            st.setString(5, movie.getBackdrop());
            st.setFloat(6, movie.getVote_average());
            st.setInt(7, movie.getVote_count());
            st.setInt(8, movie.getView());
            st.setInt(9, movie.getRuntime());
            st.setString(10, movie.getRelease_date());
            st.setString(11, movie.getCreate_at());
            st.setString(12, movie.getVideo_link());
            st.setString(13, movie.getQuality());
            st.setInt(14, movie.getCategory_id());
            st.execute();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void updateMovie(int id, String title, String overview, String poster, String backdrop, float vote_average, int runtime, String release_date, String link, String quality, int category) {
        String sql = "UPDATE [dbo].[Movies]\n"
                + "   SET [title] = ?\n"
                + "      ,[overview] = ?\n"
                + "      ,[poster] = ?\n"
                + "      ,[backdrop] = ?\n"
                + "      ,[vote_average] = ?\n"
                + "      ,[runtime] = ?\n"
                + "      ,[release_date] = ?\n"
                + "      ,[video_link] = ?\n"
                + "      ,[quality] = ?\n"
                + "      ,[category_id] = ?\n"
                + " WHERE [id] = ?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setString(1, title);
            st.setString(2, overview);
            st.setString(3, poster);
            st.setString(4, backdrop);
            st.setFloat(5, vote_average);
            st.setInt(6, runtime);
            st.setString(7, release_date);
            st.setString(8, link);
            st.setString(9, quality);
            st.setInt(10, category);
            st.setInt(11, id);
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        MovieDAO md = new MovieDAO();
        System.out.println(md.getAllMovie().get(0).getBackdrop());
    }
}
