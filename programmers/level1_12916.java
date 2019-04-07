package programmars;

// 문자열 내 p와 y의 개수
// equals, equalsIgnoreCase
// toLowerCase, toUpperCase

public class level1_12916 {

	public static void main(String[] args) {
		System.out.println(solution("pYY"));
	}
	
	public static boolean solution(String s) {
        boolean answer = true;
        int pCount = 0, yCount = 0;
        s = s.toLowerCase();
        String word[] = s.split("");

        for(int i=0; i<word.length; i++) {
            if (word[i].equals("p")) {
            	pCount += 1;
            }
            if (word[i].equals("y")) {
            	yCount += 1;
            }
        }
        if (pCount != yCount) {
        	answer = false;	
        }
        
        return answer;
    }
	
}
