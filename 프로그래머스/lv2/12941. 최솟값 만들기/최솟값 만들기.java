import java.util.*;
class Solution
{
    public int solution(int []A, int []B)
    {
        int answer = 0;

        Arrays.sort(A);
        Arrays.sort(B);
        for(int i=0;i<B.length/2;i++){
            int n = B[i];
            int m = B[B.length-i-1];
            B[i] = m;
            B[B.length-i-1] = n;
        }
        for(int i=0;i<A.length;i++){
            answer += A[i] * B[i];
        }
        return answer;
    }
}