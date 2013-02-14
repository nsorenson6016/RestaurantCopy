/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.NumberFormat;

/**
 *
 * @author Neal
 */
public class ReceiptCalc {

    public ReceiptCalc() {
    }

    public String getTotalBill(String[] menuList) {
        double bill = 0;
        double salesTax = 0;
        double grandTotal = 0;
        String[] item;
        String foodItem;
        String itemPrice;
        String receipt = "";
        NumberFormat nf = NumberFormat.getCurrencyInstance();

        for (String menuItem : menuList) {
            // Makes the item into an array. Part 1 is the name. Part 2 is the price
            item = menuItem.split("/");
            foodItem = item[0];
            itemPrice = item[1];

            // Price gets added to the bill
            bill = bill + Double.valueOf(itemPrice);

            // add name and price to the receipt, with a line break
            receipt = receipt + foodItem + " "
                    + nf.format(Double.parseDouble(itemPrice)) + "<br>";
        }

        //calculate sales tax and grand total
        salesTax = bill * 0.055;
        grandTotal = bill + salesTax;

        //put receipt into one big string
        receipt = receipt + "Total bill: " + nf.format(bill) + "<br>"
                + "Sales Tax: " + nf.format(salesTax) + "<br>"
                + "Total:" + nf.format(grandTotal);

        return receipt;
    }
}