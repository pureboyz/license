package com.inbiznetcorp.blog.vo;

public class EicVO
{
	int 	seq;		// seq
	String 	question;	// 문제
	String 	example1;	// 보기1
	String 	example2;	// 보기2
	String 	example3;	// 보기3
	String 	example4;	// 보기4
	int 	answer;		// 정답 번호
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getExample1() {
		return example1;
	}
	public void setExample1(String example1) {
		this.example1 = example1;
	}
	public String getExample2() {
		return example2;
	}
	public void setExample2(String example2) {
		this.example2 = example2;
	}
	public String getExample3() {
		return example3;
	}
	public void setExample3(String example3) {
		this.example3 = example3;
	}
	public String getExample4() {
		return example4;
	}
	public void setExample4(String example4) {
		this.example4 = example4;
	}
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
		this.answer = answer;
	}
	
	@Override
	public String toString() {
		return "EicVO [seq=" + seq + ", question=" + question + ", example1=" + example1 + ", example2=" + example2
				+ ", example3=" + example3 + ", example4=" + example4 + ", answer=" + answer + "]";
	}
}
