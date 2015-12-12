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
		if(session.user != null){
			def cart = CartItem.findAllWhere(sessionID:session.id)
			[cart:cart]
		}
	}
	
	def addToCart(){
		if(session.user == null){
			flash.message = "You need to be logged to add products to your cart."
		}else{
			User client = session.user
			Date shoppingDate = new Date(System.currentTimeMillis())
			int quantity = (params.quantity).toInteger()
			String idProd = params.productType
			def prod = Product.findAllWhere(idProduct:idProd)
			String sessionID = session.id
			CartItem item = new CartItem(client:client,shoppingDate:shoppingDate,quantity:quantity,item:prod,sessionID:sessionID)
			if(item.validate()){
				item.save()
			}
		}
		redirect(controller:'main',action:'clientSpace')
	}
	
	def displayCart(){
		def cart = CartItem.list()
		[cart:cart]
	}
	
	def saveUser(){
		if(request.method == 'POST'){
			def u = new User(params)
			if(!u.validate()){
				render(view:'inscription.gsp',model:[user:u])
			
			}else{
				u.save()
				session.user=u
				render(view:'ins.gsp')
			}
			
		}
	}
}
