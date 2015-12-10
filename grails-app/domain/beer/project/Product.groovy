package beer.project

class Product {
	
	static belongsTo = [beerBrand:Beer]
	String productType
	double price
	int stock
	String idProduct

    static constraints = {
    }
}
