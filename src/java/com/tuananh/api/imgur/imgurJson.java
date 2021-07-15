/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.api.imgur;

import org.json.JSONObject;

/**
 *
 * @author ngotu
 */
public class imgurJson {
    public static String imgurLink(String json){
        JSONObject raw = new JSONObject(json);
        JSONObject data = raw.getJSONObject("data");
        String link = data.getString("link");
        return link;
    }
    
//    public static void main(String[] args) {
//        String json = "{\"data\":{\"id\":\"IbUw1vv\",\"title\":null,\"description\":null,\"datetime\":1622804585,\"type\":\"image\\/png\",\"animated\":false,\"width\":269,\"height\":67,\"size\":2234,\"views\":0,\"bandwidth\":0,\"vote\":null,\"favorite\":false,\"nsfw\":null,\"section\":null,\"account_url\":null,\"account_id\":0,\"is_ad\":false,\"in_most_viral\":false,\"has_sound\":false,\"tags\":[],\"ad_type\":0,\"ad_url\":\"\",\"edited\":\"0\",\"in_gallery\":false,\"deletehash\":\"4XNzxZwuogp9IyT\",\"name\":\"\",\"link\":\"https:\\/\\/i.imgur.com\\/IbUw1vv.png\"},\"success\":true,\"status\":200}";
//        System.out.println(link(json));
//    }
}
