package com.hello.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.hello.board.config.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository
public class BoardDAO {

	@Autowired
	private SqlSession sqlSession;


	public int insertBoard(BoardVO vo) { // 완료

		int result = sqlSession.insert("Board.insertBoard", vo);

		return result;

	}

	// 글 삭제
	public int deleteBoard(int seq) { // 완료
		int count = sqlSession.delete("Board.deleteBoard", seq);
		return count;
	}

	public int updateBoard(BoardVO vo) {
		System.out.println(vo.getWriter() + " " + vo.getSeq());
		int num = sqlSession.update("Board.updateBoard", vo);

		return num;
	}

	public BoardVO getBoard(int seq) { // 완료

		BoardVO boardVO = sqlSession.selectOne("Board.getBoard", seq);
		return boardVO;
	}

	public List<BoardVO> getBoardList() {
		List<BoardVO> boardVOList = sqlSession.selectList("Board.getBoardList");
		return boardVOList;

	}

}
