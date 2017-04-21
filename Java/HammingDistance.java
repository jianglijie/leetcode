public class HammingDistance {
    public int hammingDistance(int x, int y) {
        int count = 0;
        int res = x ^ y;
        for(int i=0; i<32; i++){
            count += (res >> i & 1);
        }
        return count;
    }
}