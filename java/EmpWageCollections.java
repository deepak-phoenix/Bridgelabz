import Util.Helper;
import Util.EmpData;
import java.util.ArrayList;


/**
Employee: main class which handles system
@author deepakpatel
*/
class EmpWageCollections{
    private static ArrayList<EmpData> list = new ArrayList<EmpData>();
    public static void main(String[] dp){
        System.out.println("Welcome");
        final EmpData BridgeLabz = new EmpData("BridgeLabz", 20, 20, 100, 4, 8, 0);
        final EmpData Google = new EmpData("Google", 30, 30, 150, 5, 10, 0);
        list.add(BridgeLabz);
        list.add(Google);
        EmpData.displayMap();
    }
}
