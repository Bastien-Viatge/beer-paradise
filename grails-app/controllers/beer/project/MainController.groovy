package beer.project

class MainController {

    def index() {
		def beers = Beer.list()
		[beers:beers]
	}
	
	def inscription(){
	}
	
	def ourProducts(){
		
	}
	
	def clientSpace(){
		
		
	}
	
	def addToCart(){
		if(session.user == null){
			flash.message = "You need to be logged to add products to your cart."
		}
		render(view:'clientSpace.gsp')
	}
	
	def saveUser(){
		def user = new User(params)
		if(user.validate()){
			user.save()
			session.user=user
			render (view:'ins.gsp')
		}else{
			flash.message = "Please enter all the required data to create your profile."
			render(view:'inscription.gsp')
		}
	}
}
