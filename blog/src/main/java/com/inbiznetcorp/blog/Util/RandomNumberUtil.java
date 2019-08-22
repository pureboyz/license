package com.inbiznetcorp.blog.Util;

public class RandomNumberUtil
{
	/**
     * 1부터 range까지 중 랜덤으로 amount개의 숫자를 뽑아 separator를 구분자로하는 String 형태로 반환한다.
     * 
     * 
     *
     * @param int
     * @return String
     */
	public static String RandomNumberToStr(int range, int amount, String separator)
	{
		String 	numberStr 	= "";	// 랜덤으로 뽑은 amount개의 숫자가 담기는 문자열.
		int 	cnt 		= 1;	// cnt = amount가 되면 isRun을 false로 변경하여 숫자 뽑기 종료.
		boolean isRun 		= true;
		
		while(isRun)
		{
			int number = (int)((Math.random()*range)+1);	// 1~range 중에서 랜덤으로 숫자 하나를 뽑는다.
			
			// 이미 뽑은 숫자가 아니면 seqStr에 담는다.
			if(numberStr.indexOf(String.valueOf(number)) == -1)
			{
				// 마지막 숫자면 while문 종료
				if(cnt == amount)
				{
					numberStr += number;
					cnt++;
					isRun = false;
				}
				else
				{
					numberStr += ( number + separator );
					cnt++;
				}
			}
			
		}
		
		return numberStr;
	}
}
