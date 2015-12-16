package myfilters
import beer.project.ProductPurchase;
import org.grails.paypal.Payment


class PurchaseFilters {
	
	def filters = {
		all(controller:'paypal', action:'buy') {
			before = {
			}
			after = { Map model ->
				def user = SystemUser.get(request.payment.buyerId)
				def item = ProductItem.findByName(request.payment.paymentItems[0].itemName)
				new ProductPurchase( user:user, payment:request.payment, item:item).save()
			}
			afterView = { Exception e ->
			}
		}
	}

}
