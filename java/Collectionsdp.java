import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import Util.Helper;
/**
Collectionsdp: Class is playground for collections classes i am building.
@author deepakpatel
*/

class Collectionsdp{
    private static Collectionsdp obj;
    private void playArrayList(){
        final ArrayList<Integer> list = new ArrayList<Integer>();
        list.add(1);list.add(2);list.add(3);list.add(4);list.add(5);
        System.out.println("Len: "+list.size());

        // maintains inscetion order;
        Helper.display(list);

        // indexed so can get the object present in the array list by index;
        Helper.print("Getting element by index");
        Helper.print(list.get(3));
    }

    private void playLinkedList(){
        
    }

    public static void main(String[] dp){
        Helper.print("Collection useage");
        obj = new Collectionsdp();
        obj.playArrayList();
    }
}
