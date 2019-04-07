package programmars;

// 가운데 글자 가져오기
// substring

public class level1_12903 {
	public static void main(String[] args) {
		System.out.println(solution("word"));
	}
	
	  public static String solution(String s) {
	      String[] word = s.split("");
	      String answer = "";
	      int length = word.length;
	      
	      if (length % 2 == 1 ) {
	             answer = word[length / 2];
	      } else {
	          answer =  word[length / 2 - 1];
	          answer +=  word[length / 2];
	      }
	      return answer;
	  }
}
