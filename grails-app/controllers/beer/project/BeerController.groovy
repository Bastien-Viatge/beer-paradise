package beer.project

class BeerController {

    def index() { }
	
	def ourProducts(){
		def beers = Beer.list()
		[ourProducts:beers]
	}
	
	def display(){
		def beers = Beer.list()
		[ourProducts:beers]
	}
	
	def detail(){
		def beers = Beer.list()
		int index = (params.index).toInteger()
		def selectedBrand = beers.get(index)
		def products = Product.findAllWhere(beerBrand:selectedBrand.beerBrand)
		[beer:selectedBrand,products:products]
	}
}
