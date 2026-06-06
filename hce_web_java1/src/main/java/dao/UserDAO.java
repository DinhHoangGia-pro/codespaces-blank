package dao;

import context.DBContext;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.security.MessageDigest;
import java.util.Base64;

public class UserDAO {

    /*
     * Hàm mã hóa SHA256 + Base64
     */
    public static String hashPassword(String password)
            throws Exception {

        MessageDigest md =
                MessageDigest.getInstance("SHA-256");

        byte[] hash =
                md.digest(password.getBytes("UTF-8"));

        return Base64.getEncoder()
                .encodeToString(hash);
    }

    /*
     * Kiểm tra user/password
     */
    public static boolean checkLogin(
            String username,
            String password) {

        try {

            String hash = hashPassword(password);

            Connection conn =
                    new DBContext().getConnection();

            String sql =
                    "SELECT COUNT(*) "
                    + "FROM tbl_user "
                    + "WHERE username=? "
                    + "AND password=?";

            PreparedStatement ps =
                    conn.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, hash);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt(1) > 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    /*
     * Lấy thông tin user
     */
    public static User getUser(
            String username) {

        try {

            Connection conn =
                    new DBContext().getConnection();

            String sql =
                    "SELECT * "
                    + "FROM tbl_user "
                    + "WHERE username=?";

            PreparedStatement ps =
                    conn.prepareStatement(sql);

            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                User u = new User();

                u.setId(rs.getInt("id"));
                u.setUsername(
                        rs.getString("username"));

                try {
                    u.setFullname(
                            rs.getString("fullname"));
                } catch (Exception ex) {
                }

                try {
                    u.setEmail(
                            rs.getString("email"));
                } catch (Exception ex) {
                }

                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

}