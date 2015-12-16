package beer.project

import java.text.SimpleDateFormat

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
			def carts = Cart.findAllWhere(sessionID:session.id)
			Cart cart
			if(carts.empty){
				def items = CartItem.findAllWhere(sessionID:session.id)
				cart = new Cart()
				def totalPrice = 0
				for(CartItem item in items){
					totalPrice += item.quantity*item.item.price
					cart.addToItems(item)
				}
				cart.setTotalPrice(totalPrice)
				cart.setSessionID(session.id)
				Date date = new Date()
				def sdf = new SimpleDateFormat("MM/dd/yyyy")
				String cartName = session.user.mail+":"+sdf.format(date)+":not_bought"
				cart.setCartName(cartName)
				cart.save(flush:true)
			}else{
				cart = carts.get(0)
			}
				
			[cart:cart]
		}
	}
	
	def emptyCart(){
		CartItem[] cart = CartItem.findAllWhere(sessionID:session.id)
		for(CartItem item in cart){
			item.delete(flush:true)
		}
		render(view:'clientSpace.gsp')
	}
	
	/**
	 * @return
	 */
	def addToCart(){
		if(session.user == null){
			flash.message = "You need to be logged to add products to your cart."
		}else{
			def cartList = Cart.findAllWhere(sessionID:session.id)
			User client = session.user
			Date shoppingDate = new Date(System.currentTimeMillis())
			int quantity = (params.quantity).toInteger()
			String idProd = params.productType
			def prods = Product.findAllWhere(idProduct:idProd)
			Product prod = prods.get(0)
			String sessionID = session.id
			if(!cartList.empty){
				boolean alreadyExist = false
				Cart cart = cartList.get(0)
				for(CartItem item in cart.items){
					if(idProd.equals(item.item.idProduct)){
						item.quantity += quantity
						cart.totalPrice += item.item.price*quantity
						item.save(flush:true)
						cart.save(flush:true)
						alreadyExist = true
					}
				}
				if(!alreadyExist){
					CartItem item = new CartItem(client:client,shoppingDate:shoppingDate,quantity:quantity,item:prod,sessionID:sessionID)
					if(item.validate()){
						item.save()
						cart.addToItems(item)
						cart.totalPrice += quantity*prod.price
						cart.save(flush:true)
					}
				}
			}else{
//				User client = session.user
//				Date shoppingDate = new Date(System.currentTimeMillis())
//				int quantity = (params.quantity).toInteger()
//				String idProd = params.productType
//				def prods = Product.findAllWhere(idProduct:idProd)
//				Product prod = prods.get(0)
//				String sessionID = session.id
				CartItem item = new CartItem(client:client,shoppingDate:shoppingDate,quantity:quantity,item:prod,sessionID:sessionID)
				if(item.validate()){
					item.save()
					if(!cartList.empty){						
						Cart cart = cartList.get(0)
						cart.addToItems(item)
						cart.totalPrice += quantity*prod.price
						cart.save(flush:true)
					}
				}
			}
		}
		redirect(controller:'main',action:'clientSpace')
	}
	
	def displayCarts(){
		def carts = Cart.list()
		[carts:carts]
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
