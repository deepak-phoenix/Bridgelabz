public class Charge{
    // instance variables
    private static final double k = 8.99e09;
    private final double rx, ry, q;
    // constructor
    public Charge(double rx, double ry, double q){
        this.rx = rx;
        this.ry = ry;
        this.q = q;
    }
    // Methods
    public double potentialAt(double x, double y){
        double dx = x - rx;
        double dy = y - ry;
        return k * q / Math.sqrt(dx*dx + dy*dy);
    }
    public String toString(){
        return q + " at " + "(" + rx + ", "+ ry + ")";
    }

    // main Method
    public static void main(String[] dp){
        double x = Double.parseDouble(dp[0]);
        double y = Double.parseDouble(dp[1]);
        Charge c1 = new Charge(0.51, 0.63, 21.3);
        Charge c2 = new Charge(0.31, 0.94, 81.9);
        double v1 = c1.potentialAt(x,y);
        double v2 = c2.potentialAt(x,y);
        System.out.printf("%.2e\n",(v1 + v2));
    }

}
