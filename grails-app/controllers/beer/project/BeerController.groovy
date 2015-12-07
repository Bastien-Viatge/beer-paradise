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
		
		[beer:beers.get(params.index)]
	}
}
