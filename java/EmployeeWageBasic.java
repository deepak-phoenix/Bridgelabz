import java.util.Random;

class EmployeeWageBasic{
    static int monthlyWage;
    static int wagePerHr;
    static int totalHrs;

    static int genRandom(int range){
        Random random = new Random();
        return random.nextInt(range);
    }

    static void checkAttendance(){
        switch(genRandom(3)){
            case 0:
                monthlyWage += wageGen(0);
                break;
            case 1:
                monthlyWage += wageGen(4);
                totalHrs += 4;
                break;
            case 2:
                monthlyWage += wageGen(8);
                totalHrs += 8;
                break;
        }
    }

    static int wageGen(int hrs){
        return hrs * wagePerHr;
    }


    public static void main(String[] dp){
        int counter = 1;

        System.out.println("Bridgelabz");
        wagePerHr = 20;
        while( counter <= 20 && totalHrs <= 100){
            checkAttendance();
            counter++;
        }
        System.out.println(monthlyWage);
        counter = 1;
        totalHrs = 0;
        monthlyWage = 0;
        System.out.println("Google");
        wagePerHr = 30;
        while( counter <= 20 && totalHrs <= 100){
            checkAttendance();
            counter++;
        }
        System.out.println(monthlyWage);
    }


}
