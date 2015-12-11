
package beer.project;
import org.grails.paypal.Payment;
import beer.project.Product;


public class ProductPurchase {
	User user;
    Product item;
    Payment payment;
    boolean completed = false;
}
