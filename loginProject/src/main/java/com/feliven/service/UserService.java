package com.feliven.service;

import com.feliven.domain.User;
import com.feliven.domain.vo.MessageModel;
import com.feliven.mapper.UserMapper;
import com.feliven.utils.MybatisUtils;
import com.feliven.utils.StringUtils;
import org.apache.ibatis.session.SqlSession;

/**
 * 业务逻辑
 */
public class UserService {
    /**
     * 用户登录
         1、参数的非空判断
            如果参数为空
                将状态码、提示信息、回显数据设置到消息模块对象中，返回消息模型对象
         2、调用mapper层的查询方法，通过用户名查询用户对象
         3、判断用户对象是否为空
            如果为空
                将状态码、提示信息、回显数据设置到消息模块对象中，返回消息模型对象
         4、判断数据库中的密码与前台传递的密码是否相等
            如果不相等
                将状态码、提示信息、回显数据设置到消息模块对象中，返回消息模型对象
         5、登录成功，将成功状态码、提示信息、用户对象设置到消息模块对象，并return
     * @param uname
     * @param upwd
     * @return
     */
    public static MessageModel userLogin(String uname, String upwd) {
        MessageModel messageModel = new MessageModel();

        //  回显数据
        User u = new User();
        u.setName(uname);
        u.setPassword(upwd);
        messageModel.setObject(u);

        //  1、参数的非空判断
        if (StringUtils.isEmpty(uname) || StringUtils.isEmpty(upwd)) {
            //  将状态码、提示信息、回显数据设置到消息模块对象中，返回消息模型对象
            messageModel.setCode(0);
            messageModel.setMsg("用户名或密码不能为空!");
            return messageModel;
        }

        //  2、调用mapper层的查询方法，通过用户名查询用户对象
        SqlSession sqlSession = MybatisUtils.createSqlSession();
//        System.out.println(sqlSession);
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
//        System.out.println(mapper);
        User user = mapper.queryUserByName(uname);
//        System.out.println(user);
        //  3、判断用户对象是否为空
        if (user == null) {
            //  将状态码、提示信息、回显数据设置到消息模块对象中，返回消息模型对象
            messageModel.setCode(0);
            messageModel.setMsg("用户不存在");
            return messageModel;
        }

        //  4、判断数据库中的密码与前台传递的密码是否相等
        if (!upwd.equals(user.getPassword())) {
            //  将状态码、提示信息、回显数据设置到消息模块对象中，返回消息模型对象
            messageModel.setCode(0);
            messageModel.setMsg("用户密码不正确");
            return messageModel;
        }
        //  5、登录成功，将成功状态码、提示信息、用户对象设置到消息模块对象，并return
        messageModel.setObject(user);
        return messageModel;
    }

}
