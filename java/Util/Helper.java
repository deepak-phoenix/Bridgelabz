package Util;

import java.util.Random;
import java.util.Collection;
import java.util.Iterator;

/**
Helper: class with all helper static methods
@author deepakpatel
*/
public class Helper{
    final static Random random = new Random();

    // provides Boolean values randomly
    static public Boolean isPresent(){
        return random.nextBoolean();
    }

    //provides integer value randomly
    static public int isPresent(int range){
        return random.nextInt(range);
    }

    // calcuates daily wages based on the hrs provided and per hour wage
    static public int dailyWage(int hrs, int perHr){
        return perHr * hrs;
    }

    // has ability to display any collection elements
    static public void display(Collection c){
        final Iterator counter = c.iterator();
        while(counter.hasNext()){
            System.out.println(counter.next());
        }
    }

    static public void print(Object ob){
        System.out.println(ob);
    }

}
