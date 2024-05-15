/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab5.com;

/**
 *
 * @author MUHAMMAD IMRAN BIN ABD HAMID
 */
public class Stock {

    private int numShares;
    private double pricePerShare;
    private double commissionRate;

    public Stock() {
    }

    public Stock(int numShares, double pricePerShare, double commissionRate) {
        this.numShares = numShares;
        this.pricePerShare = pricePerShare;
        this.commissionRate = commissionRate;
    }

    public int getNumShares() {
        return numShares;
    }

    public void setNumShares(int numShares) {
        this.numShares = numShares;
    }

    public double getPricePerShare() {
        return pricePerShare;
    }

    public void setPricePerShare(double pricePerShare) {
        this.pricePerShare = pricePerShare;
    }

    public double getCommissionRate() {
        return commissionRate;
    }

    public void setCommissionRate(double commissionRate) {
        this.commissionRate = commissionRate;
    }

    public double getCommissionRateAsPercentage() {
        return (commissionRate <= 1) ? commissionRate * 100 : commissionRate;
    }

    public double calculateStockCost() {
        return numShares * pricePerShare;
    }

    public double calculateCommission() {
        return calculateStockCost() * commissionRate;
    }

    public double calculateTotalCost() {
        return calculateStockCost() + calculateCommission();
    }

    @Override
    public String toString() {
        return String.format(
            "StockPurchase [numShares=%d, pricePerShare=%.2f, commissionRate=%.2f%%, stockCost=%.2f, commission=%.2f, totalCost=%.2f]",
            numShares, pricePerShare, getCommissionRateAsPercentage(), calculateStockCost(), calculateCommission(), calculateTotalCost()
        );
    }

    public static void main(String[] args) {
        Stock purchase = new Stock(100, 50.0, 0.05);
        System.out.println(purchase);
    }
}
