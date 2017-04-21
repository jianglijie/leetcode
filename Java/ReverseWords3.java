public class ReverseWords3 {
    public String reverseWords(String s) {
        StringBuffer sb = new StringBuffer(s);
        String rev = sb.reverse().toString();
        String[] aa = rev.split(" ");
        StringBuffer res = new StringBuffer("");
        for(int i=aa.length-1;i>=0;i--){
            res.append(aa[i]).append(" ");
        }
        return res.toString().trim();
    }
}