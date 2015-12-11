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
		if(request.method == 'POST'){
			def u = new User(params)
			if(!u.validate()){
				render(view:'inscription.gsp',model:[user:u])
			
			}else{
				session.user=u
				render(view:'ins.gsp')
			}
			
		}
	}
}
