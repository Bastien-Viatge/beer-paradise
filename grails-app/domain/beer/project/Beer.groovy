package beer.project

class Beer {

	String beerBrand
	String presentation
	String photoName
	double opinion
	static hasMany = [products:Product]
    static constraints = {
    }
}
