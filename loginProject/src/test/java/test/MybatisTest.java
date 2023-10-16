package test;

import com.feliven.domain.User;
import com.feliven.mapper.UserMapper;
import com.feliven.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class MybatisTest {
    @Test
    public void selectUserByName() {
        SqlSession sqlSession = MybatisUtils.createSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        String name = "zhangsan";
        User user = mapper.queryUserByName(name);
        System.out.println(user);
    }
}
