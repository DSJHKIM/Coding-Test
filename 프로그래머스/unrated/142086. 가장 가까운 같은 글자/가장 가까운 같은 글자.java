class Solution {
    public int[] solution(String s) {
        int[] answer = new int[s.length()];
        answer[0] = -1;
        for(int i=0;i<s.length();i++){
            for(int j=i-1;j>=0;j--){
                if(s.charAt(i) == s.charAt(j)){
                    answer[i] = (j-i)*-1;
                    break;
                }else{
                    answer[i] = -1;
                }
            }
        }
        return answer;
    }
}