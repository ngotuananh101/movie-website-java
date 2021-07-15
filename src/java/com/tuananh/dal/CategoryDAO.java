/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.dal;

import com.tuananh.model.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ngotu
 */
public class CategoryDAO extends DBContext {

    public List<Category> getAllCategory() {
        List<Category> listca = new ArrayList<>();
        String sql = "SELECT * FROM Category";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String des = rs.getString("description");
                Category c = new Category(id, name, des);
                listca.add(c);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listca;
    }
    
    public Category getCategory(int cid) {
        String sql = "SELECT * FROM Category WHERE id = ?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String des = rs.getString("description");
                Category c = new Category(id, name, des);
                return c;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void addCategory(String name, String des) {
        String sql = "INSERT INTO [dbo].[Category]\n"
                + "           ([name]\n"
                + "           ,[description])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?)";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, des);
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void importCategory(int id, String name, String des) {
        String sql = "INSERT INTO [dbo].[Category]\n"
                + "           ([id]\n"
                + "           ,[name]\n"
                + "           ,[description])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setInt(1, id);
            st.setString(2, name);
            st.setString(3, des);
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deleteCategory(int id) {
        String sql = "DELETE FROM [dbo].[Category]\n"
                + "      WHERE id=?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setInt(1, id);
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateCategory(int id, String name, String des) {
        String sql = "UPDATE [Category]\n"
                + "   SET [name] = ?\n"
                + "      ,[description] = ?\n"
                + " WHERE [id] = ?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, des);
            st.setInt(3, id);
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        CategoryDAO cd = new CategoryDAO();
        System.out.println(cd.getAllCategory().size());
    }
}
