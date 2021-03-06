package Util;
import java.util.Map;
import java.util.TreeMap;

interface Finance{
    void calculateMonthlyWage();
}


/**
EmpData: The data requried for emp calculation.
@author deepakpatel
*/
public class EmpData implements Finance{
    private static TreeMap<String,Integer> wage = new TreeMap<String,Integer>();

    private final int DAYSLIMIT;
    private final int HRSLIMIT;
    private final int PARTTIME;
    private final int FULLTIME;
    private final int ABSENT;
    private final int WAGEPERHRS;
    private final String company;

    // variables
    private int dailyWage = 0;
    private int monthlyWage = 0;
    private int monthlyhrs = 0;
    private int counter = 1;


    // constructor
    public EmpData(final String company,final int WAGEPERHRS,final int DAYSLIMIT,final int HRSLIMIT,final int PARTTIME,final int FULLTIME,final int ABSENT){
        System.out.println("Company name: "+company+"\nWage per hour: "+WAGEPERHRS);
        this.company = company;
        this.WAGEPERHRS = WAGEPERHRS;
        this.DAYSLIMIT = DAYSLIMIT;
        this.HRSLIMIT = HRSLIMIT;
        this.PARTTIME = PARTTIME;
        this.FULLTIME = FULLTIME;
        this.ABSENT = ABSENT;
        calculateMonthlyWage();
    }

    public static void displayMap(){
        for(Map.Entry m: wage.entrySet()){
            System.out.println(m.getKey()+"->"+m.getValue());
        }
    }

    public void calculateMonthlyWage(){
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
        wage.put(company, monthlyWage);
    }


}
