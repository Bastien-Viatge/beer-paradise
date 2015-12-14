package beer.project

class Cart {
	
	static hasMany = [items:CartItem]
	double totalPrice
	String sessionID
	String cartName
	
	static constraints = {
	}

}
