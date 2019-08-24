package com.inbiznetcorp.blog.VO;

public class BoardVO
{
	String title 		= "";	// 제목
	String comments 	= "";	// 내용
	String boardname 	= "";	// 게시판 이름
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getBoardname() {
		return boardname;
	}
	public void setBoardname(String boardname) {
		this.boardname = boardname;
	}
	
	@Override
	public String toString() {
		return "BoardVO [title=" + title + ", comments=" + comments + ", boardname=" + boardname + "]";
	}
	
	
}
