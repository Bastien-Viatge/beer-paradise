package beer.project

class UserController {

    def index() {
		render(view:"login.gsp")
	}
	
	def loginUser(){
		flash.message = "test"
		
	}
	
	def display(){
		def users = User.list()
		[users:users]
	}
}
