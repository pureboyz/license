package com.inbiznetcorp.blog.VO;

public class QuestionListVO
{
	String chapter 	= "";
	String seq 		= "";
	
	public String getChapter() {
		return chapter;
	}
	public void setChapter(String chapter) {
		this.chapter = chapter;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	@Override
	public String toString() {
		return "QuestionListDTO [chapter=" + chapter + ", seq=" + seq + "]";
	}
}