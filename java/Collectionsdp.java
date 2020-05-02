import java.util.ArrayList;
import java.util.LinkedList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.TreeSet;
import java.util.Vector;
import java.util.Stack;
import java.util.PriorityQueue;
import java.util.ArrayDeque;
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
        // Array list has indexed storage like array and manuplication take more time since more shifting is requried.
        Helper.print("Array list");
        final ArrayList<Integer> list = new ArrayList<Integer>();
        list.add(7);list.add(5);list.add(5);list.add(4);list.add(15);
        System.out.println("Len: "+list.size());

        // maintains insertion order;
        Helper.display(list);

        // indexed so can get the object present in the array list by index;
        Helper.print("Getting element by index 3");
        Helper.print(list.get(3));
    }

    private void playLinkedList(){
        // linkedlist has both list and queue fucntions linked list is linked so removing and adding is easy.
        Helper.print("");
        Helper.print("Linked list");
        final LinkedList<Integer> list = new LinkedList<Integer>();
        list.add(72);list.add(12);list.add(12);list.add(14);list.add(50);

        // maintains insecrtion order;
        Helper.display(list);

        // indexed so can get the object present in the array list by index;
        // can add element to start and end of list.
        Helper.print("Getting element by index 3");
        Helper.print(list.get(3));
        Helper.print("Last element");
        Helper.print(list.getLast());
        Helper.print("First element");
        Helper.print(list.getFirst());
    }


    private void playHashSet(){
        Helper.print("");
        Helper.print("Hash set");
        HashSet<Integer> set = new HashSet<Integer>();
        set.add(72);set.add(12);set.add(34);set.add(12);set.add(10);

        // allows null value
        // does not maintain insecrtion order and duplicates
        Helper.display(set);

        // removing element
        set.remove(12);


        Helper.display(set);
    }

    private void playVector(){
        // excpet some internal difference no much difference between arraylist and vector
        Helper.print("");
        Helper.print("Vector");
        Vector<Integer> list = new Vector<Integer>();
        list.add(12);list.add(14);list.add(12);list.add(2);list.add(20);

        Helper.display(list);
    }

    private void playStack(){
        // LIFO: same as stack concept;
        Helper.print("");
        Helper.print("Stack");
        Stack<Integer> list = new Stack<Integer>();
        list.push(10);list.push(12);list.push(5);list.push(12);list.push(30);

        Helper.display(list);

        Helper.print("element popped");
        Helper.print(list.pop());
    }

    private void playPriorityQueue(){
        Helper.print("");
        Helper.print("Priority Queue");
        PriorityQueue<Integer> queue = new PriorityQueue<Integer>();
        queue.add(12);queue.add(2);queue.add(12);queue.add(22);queue.add(1240);
        Helper.display(queue);
    }

    private void playLinkedHashSet(){
        Helper.print("");
        Helper.print("Linked HashSet");
        LinkedHashSet<Integer> set = new LinkedHashSet<Integer>();
        set.add(72);set.add(12);set.add(34);set.add(12);set.add(10);

        Helper.display(set);
    }

    private void playTressSet(){
        Helper.print("");
        Helper.print("TreeSet");
        TreeSet<Integer> set = new TreeSet<Integer>();
        set.add(72);set.add(12);set.add(34);set.add(12);set.add(10);

        Helper.display(set);

    }

    private void playArrayDeque(){
        Helper.print("");
        Helper.print("Array Deque");
        ArrayDeque<Integer> queue = new ArrayDeque<Integer>();
        queue.add(12);queue.add(2);queue.add(12);queue.add(22);queue.add(1240);

        Helper.display(queue);
    }

    public static void main(String[] dp){
        Helper.print("Collection useage");
        obj = new Collectionsdp();
        obj.playArrayList();
        obj.playLinkedList();
        obj.playHashSet();
        obj.playVector();
        obj.playStack();
        obj.playPriorityQueue();
        obj.playLinkedHashSet();
        obj.playTressSet();
        obj.playArrayDeque();
    }
}
