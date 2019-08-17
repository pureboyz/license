package com.inbiznetcorp.blog.Util;

public class RandomNumberUtil
{
	/**
     * 1부터 매개변수로 넣은 int 값까지 중 랜덤으로 20개의 숫자를 뽑아 String 형태로 반환한다.
     * 
     * 1. SELECT문에서 여러개의 SEQ 값으로 검색할 때 사용하려고 만듦. 2019.08.17
     *
     * @param int
     * @return String
     */
	public static String RanNumToStr20inRange(int range)
	{
		String 	numberStr 	= "";	// 랜덤으로 뽑은 20개의 숫자가 담기는 문자열.
		int 	cnt 	= 1;	// cnt가 20이 되면 isRun을 false로 변경하여 숫자 뽑기 종료.
		boolean isRun 	= true;
		
		while(isRun)
		{
			int number = (int)((Math.random()*range)+1);	// 1~range 중에서 랜덤으로 숫자 하나를 뽑는다.
			
			// 이미 뽑은 숫자가 아니면 seqStr에 담는다.
			if(numberStr.indexOf(String.valueOf(number)) == -1)
			{
				// 마지막 숫자면 while문 종료
				if(cnt == 20)
				{
					numberStr += number;
					cnt++;
					isRun = false;
				}
				else
				{
					numberStr += number+",";
					cnt++;
				}
			}
			
		}
		
		return numberStr;
	}
}
