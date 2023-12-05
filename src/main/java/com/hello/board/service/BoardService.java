package com.hello.board.service;

import com.hello.board.config.BoardVO;
import com.hello.board.dao.BoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {




    @Autowired
    public BoardDAO boardDAO;


    public int insertBoard(BoardVO vo) {
        return boardDAO.insertBoard(vo);
    }

    public int deleteBoard(int seq) {
        return boardDAO.deleteBoard(seq);
    }

    public int updateBoard(BoardVO vo) {
        return boardDAO.updateBoard(vo);
    }

    public BoardVO getBoard(int seq) {
        return boardDAO.getBoard(seq);
    }

    public List<BoardVO> getBoardList() {

        return boardDAO.getBoardList();
    }
}


