import Util.Helper;
/**
Employee: main class which handles system
@author deepakpatel
*/
class EmployeeOriginal{
    // class constants
    static final int DAYSLIMIT = 20;
    static final int HRSLIMIT = 100;

    // object constants
    final int partTimeHrs = 4;
    final int fullTimeHrs = 8;
    final int absent = 0;

    // object variable
    final int wagePerHrs;

    // variables
    int dailyWage = 0;
    int monthlyWage = 0;
    int monthlyhrs = 0;
    int counter = 1;

    // constructor
    EmployeeOriginal(String company, int wagePerHrs){
        System.out.println("Company name: "+company+"\nWage per hour: "+wagePerHrs);
        this.wagePerHrs = wagePerHrs;
        calculateMonthlyWage();
    }

    void calculateMonthlyWage(){
        while(counter <= DAYSLIMIT && monthlyhrs <= HRSLIMIT){
            switch(Helper.isPresent(3)){
                case 0:
                    dailyWage = Helper.dailyWage(fullTimeHrs, wagePerHrs);
                    monthlyhrs += fullTimeHrs;
                    break;
                case 1:
                    dailyWage = Helper.dailyWage(absent, wagePerHrs);
                    monthlyhrs += absent;
                    break;
                case 2:
                    dailyWage = Helper.dailyWage(partTimeHrs, wagePerHrs);
                    monthlyhrs += partTimeHrs;
                    break;
            }
            monthlyWage += dailyWage;
            counter++;
        }
        System.out.println("Monthly wage: "+ monthlyWage+"\nMonthly hrs: "+monthlyhrs+"\nDays :"+counter);
    }

    public static void main(String[] dp){
        System.out.println("Welcome");
        EmployeeOriginal BridgeLabz = new EmployeeOriginal("BridgeLabz", 20);
        EmployeeOriginal Google = new EmployeeOriginal("Google", 30);
    }
}
