package programmars;

// 문자열 다루기 기본
// matches
// Character.isDigit(s.CharAt(i))

public class level1_12918 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(solution("123a"));
	}
	  public static boolean solution(String s) {
	      boolean answer = false;
	   
	      if (s.length() == 4 || s.length() ==6) {
	        try {
	             int k = Integer.parseInt(s);
	              answer = true;
	         } catch(NumberFormatException e) {
	             answer = false;
	        }
	      }
	      return answer;
	  }
}
