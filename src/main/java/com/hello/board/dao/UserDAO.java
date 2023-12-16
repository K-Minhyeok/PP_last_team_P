package com.hello.board.dao;

import com.hello.board.config.UserVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
    @Autowired
    SqlSession sqlSession;
    public UserVO getUser(UserVO vo) {
        System.out.println(vo.getUserid() +" "+ vo.getPassword() + vo.getUsername());
        return sqlSession.selectOne("User.getUser", vo);
    }
}
