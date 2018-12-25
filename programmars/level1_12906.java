package programmars;

import java.util.ArrayList;

// 같은 숫자는 싫어
// ArrayList
public class level1_12906 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int arr[] = {4,4,4,3,3};
		System.out.println(solution(arr));
	}

	public static int[] solution(int []arr) {
        ArrayList<Integer> list = new ArrayList<Integer>();
        int temp = -1;
        
        for(int i : arr) {
            if(temp != i) {
                list.add(i);
                temp = i;
            }
        }
        int[] answer = new int[list.size()];
        for(int i=0; i<list.size(); i++)
            answer[i] = list.get(i);
        System.out.println(answer);

        return answer;
	}
}
