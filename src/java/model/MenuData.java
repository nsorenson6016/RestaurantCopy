/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Neal
 * 
 * Fake database of menu items, set as a List
 */
public class MenuData {
     
    public List getItems(){
        List items = new ArrayList();
        
        items.add(new MenuItem("New York Strip", 23.95));
        items.add(new MenuItem ("Bacon Carbonara", 11.95));
        items.add(new MenuItem ("Chicken Cordon Bleu", 15.95));
        items.add(new MenuItem ("Greek Salad", 8.95));
        items.add(new MenuItem ("Garden Salad", 5.95));
        items.add(new MenuItem ("Coca-Cola", 1.95));
        items.add(new MenuItem ("Strawberry Lemonade", 2.95));
        items.add(new MenuItem ("IceWater", 0.00));
        
        return items;
    }
}
