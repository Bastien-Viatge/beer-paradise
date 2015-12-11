package beer.project

class UserController {

    def index() {
		render(view:"login.gsp")
	}
	
	def loginUser(){
		if(params.mail != null && params.password != null){
			def users = User.list()
			def logged = false;
			session.user = null
			for(User user : users){
				if(user.mail == params.mail && user.password == params.password){
					session.user = user
					logged = true	
				}
			}
			if(logged){
				flash.message = "Welcome back !"
			}else{
				flash.message = "No match found."
			}
			redirect(uri: request.getHeader('referer') )
		}
	}
	
	def logout(){
		flash.message = "Successfully logged out !"
		session.user = null	
		session.invalidate()
		redirect(uri: request.getHeader('referer') )
	}
	
	def display(){
		def users = User.list()
		[users:users]
	}
}
