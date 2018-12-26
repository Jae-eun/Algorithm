package programmars;

// 자연수 뒤집어 배열로 만들기

public class level1_12932 {
	public static void main(String[] args) {
		System.out.println(solution(12345));
	}
	
	  public static int[] solution(long n) {
	        int length = Long.toString(n).length();
		    int[] answer = new int[length];
		      for(int i=0; i<length; i++) {
		          answer[i] = (int)(n % 10);
		          n = n / 10;
		      }
	      return answer;
	  }
}