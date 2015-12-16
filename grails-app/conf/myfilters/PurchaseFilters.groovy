package myfilters
import beer.project.ProductPurchase;
import org.grails.paypal.Payment
import beer.project.User
import beer.project.Cart



class PurchaseFilters {
	
	def filters = {
		all(controller:'paypal', action:'buy') {
			before = {
			}
			after = { Map model ->
				//def user = User.get(request.payment.buyerId)
				User user = session.user
				//def item = ProductItem.findByName(request.payment.paymentItems[0].itemName)
				def carts = Cart.findAllWhere(sessionID:session.id)
				Cart cart = carts.get(0)
				//new ProductPurchase( user:user, payment:request.payment, item:item).save()
				new ProductPurchase( user:user, payment:request.payment, item:cart).save()
				
			}
			afterView = { Exception e ->
			}
		}
	}

}
