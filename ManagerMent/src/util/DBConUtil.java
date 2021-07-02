package util;

import java.sql.*;

public class DBConUtil {
    /*
     * 通过static关键字修饰方法，类名可直接调用
     *
     * 工具类：
     * ① 创建并返回数据库的连接对象Connecton
     * ② 关闭指定的连接对象，释放资源
     */
    private static String path = "com.mysql.cj.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/index?useUnicode=true&characterEncoding=utf-8";
    private static String user = "root";
    private static String password = "123456";

    private static Connection conn = null;

    //只需加载一次
    static {
        try {
            Class.forName(path);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    /**
     * 数据库连接对象只需要创建一次即可
     * 单例设计模式
     */
    public static Connection getConn() {
        if(null == conn) {
            try {
                conn = DriverManager.getConnection(url, user, password);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return conn;
    }

    /**
     * 关闭jdbc连接资源
     * @param resultSet
     * @param preparedStatement
     * @param connection
     */
    //以后用rs pstmt conn 约定俗成
    public static void close(ResultSet resultSet, PreparedStatement preparedStatement, Connection connection) {
        try {
            if(null != resultSet) {
                resultSet.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                if(null != preparedStatement) {
                    preparedStatement.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    if(null != connection) {
                        connection.close(); // 并不意味着conn ！= null
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }



}
