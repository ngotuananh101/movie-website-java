/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.model;

/**
 *
 * @author ngotu
 */
public class Movie {
    int id;
    int tmdb_od;
    String title;
    String overview;
    String poster;
    String backdrop;
    float vote_average;
    int vote_count;
    int view;
    int runtime;
    String release_date;
    String create_at;
    String video_link;
    String quality;
    int category_id;

    public Movie() {
    }

    public Movie(int id, int tmdb_od, String title, String overview, String poster, String backdrop, float vote_average, int vote_count, int view, int runtime, String release_date, String create_at, String video_link, String quality, int category_id) {
        this.id = id;
        this.tmdb_od = tmdb_od;
        this.title = title;
        this.overview = overview;
        this.poster = poster;
        this.backdrop = backdrop;
        this.vote_average = vote_average;
        this.vote_count = vote_count;
        this.view = view;
        this.runtime = runtime;
        this.release_date = release_date;
        this.create_at = create_at;
        this.video_link = video_link;
        this.quality = quality;
        this.category_id = category_id;
    }
    
    public Movie(int tmdb_od, String title, String overview, String poster, String backdrop, float vote_average, int vote_count, int view, int runtime, String release_date, String create_at, String video_link, String quality) {
        this.tmdb_od = tmdb_od;
        this.title = title;
        this.overview = overview;
        this.poster = poster;
        this.backdrop = backdrop;
        this.vote_average = vote_average;
        this.vote_count = vote_count;
        this.view = view;
        this.runtime = runtime;
        this.release_date = release_date;
        this.create_at = create_at;
        this.video_link = video_link;
        this.quality = quality;
    }

    public Movie(int tmdb_od, String title, String overview, String poster, String backdrop, float vote_average, int vote_count, int view, int runtime, String release_date, String create_at) {
        this.tmdb_od = tmdb_od;
        this.title = title;
        this.overview = overview;
        this.poster = poster;
        this.backdrop = backdrop;
        this.vote_average = vote_average;
        this.vote_count = vote_count;
        this.view = view;
        this.runtime = runtime;
        this.release_date = release_date;
        this.create_at = create_at;
    }

    public Movie(int tmdb_od, String title, String overview, String poster, String backdrop, float vote_average, int vote_count, int view, int runtime, String release_date, String create_at, String video_link, String quality, int category_id) {
        this.tmdb_od = tmdb_od;
        this.title = title;
        this.overview = overview;
        this.poster = poster;
        this.backdrop = backdrop;
        this.vote_average = vote_average;
        this.vote_count = vote_count;
        this.view = view;
        this.runtime = runtime;
        this.release_date = release_date;
        this.create_at = create_at;
        this.video_link = video_link;
        this.quality = quality;
        this.category_id = category_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTmdb_od() {
        return tmdb_od;
    }

    public void setTmdb_od(int tmdb_od) {
        this.tmdb_od = tmdb_od;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getBackdrop() {
        return backdrop;
    }

    public void setBackdrop(String backdrop) {
        this.backdrop = backdrop;
    }

    public float getVote_average() {
        return vote_average;
    }

    public void setVote_average(float vote_average) {
        this.vote_average = vote_average;
    }

    public int getVote_count() {
        return vote_count;
    }

    public void setVote_count(int vote_count) {
        this.vote_count = vote_count;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public int getRuntime() {
        return runtime;
    }

    public void setRuntime(int runtime) {
        this.runtime = runtime;
    }

    public String getRelease_date() {
        return release_date;
    }

    public void setRelease_date(String release_date) {
        this.release_date = release_date;
    }

    public String getCreate_at() {
        return create_at;
    }

    public void setCreate_at(String create_at) {
        this.create_at = create_at;
    }

    public String getVideo_link() {
        return video_link;
    }

    public void setVideo_link(String video_link) {
        this.video_link = video_link;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    @Override
    public String toString() {
        return "Movie{" + "id=" + id + ", tmdb_od=" + tmdb_od + ", title=" + title + ", overview=" + overview + ", poster=" + poster + ", backdrop=" + backdrop + ", vote_average=" + vote_average + ", vote_count=" + vote_count + ", view=" + view + ", runtime=" + runtime + ", release_date=" + release_date + ", create_at=" + create_at + ", video_link=" + video_link + ", quality=" + quality + ", category_id=" + category_id + '}';
    }
    
    public int getYear(String release_at){
        String[] strRelease = release_at.split("-");
        String year = strRelease[0];
        int y = Integer.parseInt(year);
        return y;
    }
    public static void main(String[] args) {
        Movie mv = new Movie();
        System.out.println(mv.getYear("1999-10-15 00:00:00.000"));
    }
}
