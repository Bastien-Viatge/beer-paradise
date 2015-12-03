package beer.project

class UserController {

    def index() {
		render(view:"login.gsp")
	}
	
	def loginUser(){
		
	}
	
	def display(){
		def users = User.list()
		[users:users]
	}
}
