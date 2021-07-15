/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.api.tmdb;

import com.tuananh.model.Category;
import com.tuananh.model.Movie;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author ngotu
 */
public class tmdbJson {

    public static Movie movie(String json) {
        JSONObject raw = new JSONObject(json);
        int tmdb_id = raw.getInt("id");
        String title = raw.getString("title");
        String overview = raw.getString("overview");
        String poster = "http://image.tmdb.org/t/p/w500" + raw.getString("poster_path");
        String backdrop = "http://image.tmdb.org/t/p/w500" + raw.getString("backdrop_path");
        float vote_average = raw.getFloat("vote_average");
        int vote_count = raw.getInt("vote_count");
        int runtime = raw.getInt("runtime");
        String release_date = raw.getString("release_date");
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("uuuu-MM-dd HH:mm:ss");
        ZonedDateTime now = ZonedDateTime.now();
        String create_at = dtf.format(now);
        JSONArray genres = raw.getJSONArray("genres");
        int category_id = genres.getJSONObject(0).getInt("id");
        return new Movie(tmdb_id, title, overview, poster, backdrop, vote_average, vote_count, runtime, runtime, release_date, create_at, null, null, category_id);
    }

//    public static String movie2(String json) {
//        JSONObject raw = new JSONObject(json);
//        JSONArray genres = raw.getJSONArray("genres");
////        String title = genres.getString(0);
//        return genres.getJSONObject(0).getString("name");
//    }
    public static List<Category> category(String json) {
        List<Category> listca = new ArrayList<>();
        JSONObject raw = new JSONObject(json);
        JSONArray arr = raw.getJSONArray("genres");
//        String title = genres.getString(0);
        for (int i = 0; i < arr.length(); i++) {
            int id = arr.getJSONObject(i).getInt("id");
            String name = arr.getJSONObject(i).getString("name");
            String des = arr.getJSONObject(i).getString("name");
            Category ca = new Category(id, name, des);
            listca.add(ca);
        }
        return listca;
    }

    public static void main(String[] args) {
        String json = "{\"adult\":false,\"backdrop_path\":\"/yizL4cEKsVvl17Wc1mGEIrQtM2F.jpg\",\"belongs_to_collection\":{\"id\":848922,\"name\":\"The Tomorrow War Collection\",\"poster_path\":null,\"backdrop_path\":null},\"budget\":0,\"genres\":[{\"id\":28,\"name\":\"Action\"},{\"id\":878,\"name\":\"Science Fiction\"}],\"homepage\":\"https://www.amazon.com/dp/B093CQZ2SM\",\"id\":588228,\"imdb_id\":\"tt9777666\",\"original_language\":\"en\",\"original_title\":\"The Tomorrow War\",\"overview\":\"The world is stunned when a group of time travelers arrive from the year 2051 to deliver an urgent message: Thirty years in the future, mankind is losing a global war against a deadly alien species. The only hope for survival is for soldiers and civilians from the present to be transported to the future and join the fight. Among those recruited is high school teacher and family man Dan Forester. Determined to save the world for his young daughter, Dan teams up with a brilliant scientist and his estranged father in a desperate quest to rewrite the fate of the planet.\",\"popularity\":6694.868,\"poster_path\":\"/xipF6XqfSYV8DxLqfLN6aWlwuRp.jpg\",\"production_companies\":[{\"id\":4,\"logo_path\":\"/fycMZt242LVjagMByZOLUGbCvv3.png\",\"name\":\"Paramount\",\"origin_country\":\"US\"},{\"id\":82819,\"logo_path\":\"/5Z8WWr0Lf1tInVWwJsxPP0uMz9a.png\",\"name\":\"Skydance Media\",\"origin_country\":\"US\"},{\"id\":423,\"logo_path\":\"/uvA6e2O31qaonsbYd8tjvgqmNXh.png\",\"name\":\"Phantom Four\",\"origin_country\":\"US\"},{\"id\":125000,\"logo_path\":null,\"name\":\"Lit Entertainment Group\",\"origin_country\":\"US\"},{\"id\":20580,\"logo_path\":\"/tkFE81jJIqiFYPP8Tho57MXRQEx.png\",\"name\":\"Amazon Studios\",\"origin_country\":\"US\"}],\"production_countries\":[{\"iso_3166_1\":\"US\",\"name\":\"United States of America\"}],\"release_date\":\"2021-07-02\",\"revenue\":0,\"runtime\":138,\"spoken_languages\":[{\"english_name\":\"English\",\"iso_639_1\":\"en\",\"name\":\"English\"}],\"status\":\"Released\",\"tagline\":\"The fight for tomorrow begins today.\",\"title\":\"The Tomorrow War\",\"video\":false,\"vote_average\":8.4,\"vote_count\":1942}";
        Movie mv = movie(json);
        System.out.println(mv.toString());
    }
}
