import Util.Helper;
/**
EmpData: The data requried for emp calculation.
@author deepakpatel
*/
class EmpData{

    private final int DAYSLIMIT;
    private final int HRSLIMIT;
    private final int PARTTIME;
    private final int FULLTIME;
    private final int ABSENT;
    private final int WAGEPERHRS;

    // variables
    private int dailyWage = 0;
    private int monthlyWage = 0;
    private int monthlyhrs = 0;
    private int counter = 1;

    // constructor
    EmpData(final String company,final int WAGEPERHRS,final int DAYSLIMIT,final int HRSLIMIT,final int PARTTIME,final int FULLTIME,final int ABSENT){
        System.out.println("Company name: "+company+"\nWage per hour: "+WAGEPERHRS);
        this.WAGEPERHRS = WAGEPERHRS;
        this.DAYSLIMIT = DAYSLIMIT;
        this.HRSLIMIT = HRSLIMIT;
        this.PARTTIME = PARTTIME;
        this.FULLTIME = FULLTIME;
        this.ABSENT = ABSENT;
        calculateMonthlyWage();
    }

    void calculateMonthlyWage(){
        while(counter <= DAYSLIMIT && monthlyhrs <= HRSLIMIT){
            switch(Helper.isPresent(3)){
                case 0:
                    dailyWage = Helper.dailyWage(FULLTIME, WAGEPERHRS);
                    monthlyhrs += FULLTIME;
                    break;
                case 1:
                    dailyWage = Helper.dailyWage(ABSENT, WAGEPERHRS);
                    monthlyhrs += ABSENT;
                    break;
                case 2:
                    dailyWage = Helper.dailyWage(PARTTIME, WAGEPERHRS);
                    monthlyhrs += PARTTIME;
                    break;
            }
            monthlyWage += dailyWage;
            counter++;
        }
        System.out.println("Monthly wage: "+ monthlyWage+"\nMonthly hrs: "+monthlyhrs+"\nDays :"+counter);
    }


}




/**
Employee: main class which handles system
@author deepakpatel
*/
class EmployeePremium{

    public static void main(String[] dp){
        System.out.println("Welcome");
        final EmpData BridgeLabz = new EmpData("BridgeLabz", 20, 20, 100, 4, 8, 0);
        final EmpData Google = new EmpData("Google", 30, 30, 150, 5, 10, 0);
    }
}
