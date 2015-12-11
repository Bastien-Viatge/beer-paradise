package beer.project

class Product {
	
	static belongsTo = [beerBrand:Beer]
	String productType
	double price
	int stock
	String idProduct

    static constraints = {
		price(blank:false, nullable:false)
		idProduct(blank:false, nullable:false, unique:true)
    }
}
