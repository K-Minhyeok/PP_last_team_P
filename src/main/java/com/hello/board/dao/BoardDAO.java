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
	public BoardDAO(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Autowired
	private SqlSession sqlSession;

	private final JdbcTemplate jdbcTemplate;


	public int insertBoard(BoardVO vo) { // 완료

//		String sql = "insert into BOARD (title,writer,content,category) values ( " + "'" + vo.getTitle() + "',"+ "'" + vo.getWriter() + "',"
//				+ "'" + vo.getContent() + "',"+ "'" + vo.getCategory() + "')";

		int result = sqlSession.insert("Board.insertBoard", vo);

		return result;

	}

	// 글 삭제
	public int deleteBoard(int seq) { // 완료
		int count = sqlSession.delete("Board.deleteBoard", seq);
		return count;
	}

	public int updateBoard(BoardVO vo) {
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
//	public List<BoardVO> getBoardList(){
//		List<BoardVO> list = new ArrayList<BoardVO>();
//		System.out.println("===> JDBC로 getBoardList() 기능 처리");
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_LIST);
//			rs = stmt.executeQuery();
//			while(rs.next()) {
//				BoardVO one = new BoardVO();
//				one.setSeq(rs.getInt("seq"));
//				one.setTitle(rs.getString("title"));
//				one.setWriter(rs.getString("writer"));
//				one.setContent(rs.getString("content"));
//				one.setRegdate(rs.getDate("regdate"));
//				one.setCnt(rs.getInt("cnt"));
//				list.add(one);
//			}
//			rs.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return list;
//	}






}
