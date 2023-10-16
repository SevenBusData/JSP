package com.feliven.mapper;

import com.feliven.domain.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    /**
     * @param name
     * @return
     */
    User queryUserByName(@Param("name") String name);
}
