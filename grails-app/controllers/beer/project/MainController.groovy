package beer.project

class MainController {

    def index() {
		render (view:'index.gsp')
	}
	
	def inscription(){
		render (view:'inscription.gsp')
	}
	
	def saveUser(){
		def user = new User(params)
		user.save()
		render (view:'ins.gsp')
	}
}
