package com.inbiznetcorp.blog.VO;

public class QuestionListVO
{
	String 	license 	= "";	// 자격증번호
	String 	chapter 	= "";	// 과목번호
	String 	seqquestion = "";	// 문제번호
	int 	count 		= 0;	// 문제개수
	
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public String getChapter() {
		return chapter;
	}
	public void setChapter(String chapter) {
		this.chapter = chapter;
	}
	public String getSeqquestion() {
		return seqquestion;
	}
	public void setSeqquestion(String seqquestion) {
		this.seqquestion = seqquestion;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
