package com.inbiznetcorp.blog.VO;

public class TestHistoryVO
{
	String 	license = "";	// 자격증
	String 	subject = "";	// 과목
	int 	score 	= 0;	// 점수
	
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	@Override
	public String toString() {
		return "TestHistoryVO [license=" + license + ", subject=" + subject + ", score=" + score + "]";
	}
}
