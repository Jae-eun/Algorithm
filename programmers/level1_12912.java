package programmars;

// 두 정수 사이의 합 

public class level1_12912 {
	public static void main(String[] args) {
		System.out.println(solution(3,5));
	}
	  public static long solution(int a, int b) {
	      long answer = 0;
	      int temp = 0;
	      if (a>b) {
	          temp = b;
	          b = a;
	          a = temp;
	      }
	      for (int i = a; i <= b; i++) {
	          answer += i;
	      }
	      return answer;
	  }
}
