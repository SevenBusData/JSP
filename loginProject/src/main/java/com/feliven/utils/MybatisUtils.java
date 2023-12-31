package com.feliven.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class MybatisUtils {
    public static SqlSession createSqlSession() {
        SqlSession sqlSession = null;
        try {
            InputStream inputStream = Resources.getResourceAsStream("mybatis-config.xml");
            sqlSession = new SqlSessionFactoryBuilder().build(inputStream).openSession();
        } catch (Exception e) {
            System.out.println("没有连接到对应到mybatis-config.xml文件");
            e.printStackTrace();
        } finally {
            return sqlSession;
        }
    }

}
