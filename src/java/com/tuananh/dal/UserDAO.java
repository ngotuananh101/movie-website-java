/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.tuananh.model.User;
import java.util.ArrayList;
import java.util.List;
import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author ngotu
 */
public class UserDAO extends DBContext {

    public User getAccount(String usernameoremail, String pass) {
        String sql = "SELECT [id]\n"
                + "      ,[role]\n"
                + "      ,[name]\n"
                + "      ,[email]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[avatar]\n"
                + "  FROM [Users]\n"
                + "  WHERE username=? or email=?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setString(1, usernameoremail);
            st.setString(2, usernameoremail);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String role = rs.getString("role");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String avatar = rs.getString("avatar");
                if (checkPass(pass, password)) {
                    return new User(id, role, name, email, username, password, avatar);
                } else {
                    return null;
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<User> getAllUser() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT *"
                + "  FROM [Users]";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String role = rs.getString("role");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String avatar = rs.getString("avatar");
                User u = new User(id, role, name, email, username, password, avatar);
                users.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return users;
    }

    public static boolean checkPass(String pass, String hashPass) {
        boolean valuate = BCrypt.checkpw(pass, hashPass);
        return valuate;
    }

    public static String hashPass(String pass) {
        String hash = BCrypt.hashpw(pass, BCrypt.gensalt(12));
        return hash;
    }

    public int checkExit(String usernameoremail) {
        String sql = "SELECT [id]\n"
                + "      ,[role]\n"
                + "      ,[name]\n"
                + "      ,[email]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "  FROM [Users]\n"
                + "  WHERE username=? or email=?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setString(1, usernameoremail);
            st.setString(2, usernameoremail);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return 1;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    String errorMessage;

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public int insertUsser(String name, String username, String email, String pass) {
        errorMessage = "";
        if (checkExit(username) == 0) {
            String sql = "INSERT INTO [dbo].[Users]\n"
                    + "           ([role]\n"
                    + "           ,[name]\n"
                    + "           ,[email]\n"
                    + "           ,[username]\n"
                    + "           ,[password]\n"
                    + "           ,[avatar])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)\n";
            try {
                PreparedStatement st = getConnection().prepareStatement(sql);
                st.setString(1, "user");
                st.setString(2, name);
                st.setString(3, email);
                st.setString(4, username);
                st.setString(5, pass);
                st.setString(6, "https://i.imgur.com/zXbhmFD.png");
                st.execute();
                return 1;
            } catch (Exception e) {
                setErrorMessage(e.getMessage());
                return 0;
            }
        } else {
            System.out.println("Acc da ton tai");
            return -1;
        }
    }

//    public static void main(String[] args) {
//        UserDAO ud = new UserDAO();
//        System.out.println(ud.checkAccount("ngotuananh2101@gmail.com", "TuanAnh2101"));
//    }
}
