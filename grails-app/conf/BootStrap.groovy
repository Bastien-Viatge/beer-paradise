import beer.project.Beer
import beer.project.Product
import beer.project.User

class BootStrap {

    def init = { servletContext ->
		def date = new Date(System.currentTimeMillis())
		new User(firstName:'admin',lastName:'admin',password:'admin',birthDate:date,mail:'admin@beer-paradise.com',address:'test').save()

		def leffe = new Beer(beerBrand:'Leffe',presentation:'Trop bonne de ouffe !',opinion:9.05,photoName:"leffe.png")
		def chouffe = new Beer(beerBrand:'Chouffe',presentation:'Grosse cuite, petit prix',opinion:9.15,photoName:"chouffe.jpg")
		def cuvee = new Beer(beerBrand:'Cuvee des Trolls',presentation:'Meme les moches ont le droit de boire.',opinion:6.45,photoName:"rince.jpg")
		def demon = new Beer(beerBrand:'Biere du demon',presentation:'Diaboliquement douce..',opinion:6.15,photoName:"demon.png")
		def goudale = new Beer(beerBrand:'Goudale',presentation:'Si y\'a du gout, c\'est du Goudale.',opinion:8.95,photoName:"goudale.jpg")
		
		leffe.addToProducts(new Product(productType:'1L bottle',price:5.00,stock:1000,idProduct:'00001'))
		leffe.addToProducts(new Product(productType:'33cl bottle',price:2.5,stock:1000,idProduct:'00002'))
		leffe.addToProducts(new Product(productType:'50cl can',price:3.00,stock:1000,idProduct:'00003'))
		leffe.addToProducts(new Product(productType:'Pack(x6)',price:15.00,stock:1000,idProduct:'00004'))
		leffe.save(flush:true,failOnError:true)
		
		chouffe.addToProducts(new Product(productType:'1L bottle',price:5.00,stock:1000,idProduct:'00005'))
		chouffe.addToProducts(new Product(productType:'33cl bottle',price:2.5,stock:1000,idProduct:'00006'))
		chouffe.addToProducts(new Product(productType:'50cl can',price:3.00,stock:1000,idProduct:'00007'))
		chouffe.addToProducts(new Product(productType:'Pack(x6)',price:15.00,stock:1000,idProduct:'00008'))
		chouffe.save(flush:true,failOnError:true)
		
		cuvee.addToProducts(new Product(productType:'1L bottle',price:5.00,stock:1000,idProduct:'00009'))
		cuvee.addToProducts(new Product(productType:'33cl bottle',price:2.5,stock:1000,idProduct:'00010'))
		cuvee.addToProducts(new Product(productType:'50cl can',price:3.00,stock:1000,idProduct:'00011'))
		cuvee.addToProducts(new Product(productType:'Pack(x6)',price:15.00,stock:1000,idProduct:'00012'))
		cuvee.save(flush:true,failOnError:true)
		
		demon.addToProducts(new Product(productType:'1L bottle',price:5.00,stock:1000,idProduct:'00013'))
		demon.addToProducts(new Product(productType:'33cl bottle',price:2.5,stock:1000,idProduct:'00014'))
		demon.addToProducts(new Product(productType:'50cl can',price:3.00,stock:1000,idProduct:'00015'))
		demon.addToProducts(new Product(productType:'Pack(x6)',price:15.00,stock:1000,idProduct:'00016'))
		demon.save(flush:true,failOnError:true)
		
		goudale.addToProducts(new Product(productType:'1L bottle',price:5.00,stock:1000,idProduct:'00017'))
		goudale.addToProducts(new Product(productType:'33cl bottle',price:2.5,stock:1000,idProduct:'00018'))
		goudale.addToProducts(new Product(productType:'50cl can',price:3.00,stock:1000,idProduct:'00019'))
		goudale.addToProducts(new Product(productType:'Pack(x6)',price:15.00,stock:1000,idProduct:'00020'))
		goudale.save(flush:true,failOnError:true)

    }
    def destroy = {
    }
}
