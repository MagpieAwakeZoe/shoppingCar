package Module;

/**
 * Created by by on 2017/6/2.
 */
public class product {


    public product() {
    }
    private String name;
    private String number;
    private String Allprice;
    private String unitPrice;

    public product(String name, String number, String allprice, String unitPrice) {
        this.name = name;
        this.number = number;
        Allprice = allprice;
        this.unitPrice = unitPrice;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAllprice() {
        return Allprice;
    }

    public void setAllprice(String allprice) {
        Allprice = allprice;
    }

    public String getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(String unitPrice) {
        this.unitPrice = unitPrice;
    }
}
