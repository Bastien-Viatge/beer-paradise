package beer.project

class MainController {

    def index() {
	}
	
	def inscription(){
	}
	
	def saveUser(){
		def user = new User(params)
		if(user.validate()){
			user.save()
			render (view:'ins.gsp',model:[user:user])
		}else{
			flash.message = "Please enter all the asked data in order to create a profile."
			render(view:'inscription.gsp')
		}
	}
}
