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
		}else{
			User client = session.user
			Date shoppingDate = new Date(System.currentTimeMillis())
			int quantity = (params.quantity).toInteger()
			String idProd = params.productType
			def prod = Product.findAllWhere(idProduct:idProd)
			CartItem item = new CartItem(client:client,shoppingDate:shoppingDate,quantity:quantity,item:prod)
			if(item.validate()){
				item.save()
				CartItem[] cart = session.cart
				if(cart == null){
					session.cart = item
				}else{
					//cart.add(item)
				}
				
			}
		}
		render(view:'clientSpace.gsp')
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
