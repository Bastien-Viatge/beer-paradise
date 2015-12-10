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
