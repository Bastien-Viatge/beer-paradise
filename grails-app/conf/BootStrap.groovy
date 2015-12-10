import beer.project.Beer
import beer.project.Product
import beer.project.User

class BootStrap {

    def init = { servletContext ->
		def date = new Date(System.currentTimeMillis())
		new User(firstName:'admin',lastName:'admin',password:'admin',birthDate:date,mail:'admin@beer-paradise.com',address:'test').save()
		
		new Beer(beerBrand:'Leffe',presentation:'Trop bonne de ouffe !',opinion:9.05,photoName:"leffe.png").save()

		new Beer(beerBrand:'Chouffe',presentation:'Grosse cuite, petit prix',opinion:9.15,photoName:"chouffe.jpg").save()
		new Beer(beerBrand:'Cuvee des Trolls',presentation:'Meme les moches ont le droit de boire.',opinion:6.45,photoName:"rince.jpg").save()
		new Beer(beerBrand:'Biere du demon',presentation:'Diaboliquement douce..',opinion:6.15,photoName:"demon.png").save()
		new Beer(beerBrand:'Goudale',presentation:'Si y\'a du gout, c\'est du Goudale.',opinion:8.95,photoName:"goudale.jpg").save()
		
		new Product(beerBrand:'Leffe',productType:'1L bottle',price:5.00,stock:1000,idProduct:'00001').save()
		new Product(beerBrand:'Leffe',productType:'33cl bottle',price:2.5,stock:1000,idProduct:'00002').save()
		new Product(beerBrand:'Leffe',productType:'50cl can',price:3.00,stock:1000,idProduct:'00003').save()
		new Product(beerBrand:'Leffe',productType:'Pack(✕6)',price:15.00,stock:1000,idProduct:'00004').save()
		
		new Product(beerBrand:'Chouffe',productType:'1L bottle',price:5.00,stock:1000,idProduct:'00005').save()
		new Product(beerBrand:'Chouffe',productType:'33cl bottle',price:2.5,stock:1000,idProduct:'00006').save()
		new Product(beerBrand:'Chouffe',productType:'50cl can',price:3.00,stock:1000,idProduct:'00007').save()
		new Product(beerBrand:'Chouffe',productType:'Pack(✕6)',price:15.00,stock:1000,idProduct:'00008').save()
		
		new Product(beerBrand:'Cuvee des Trolls',productType:'1L bottle',price:5.00,stock:1000,idProduct:'00009').save()
		new Product(beerBrand:'Cuvee des Trolls',productType:'33cl bottle',price:2.5,stock:1000,idProduct:'00010').save()
		new Product(beerBrand:'Cuvee des Trolls',productType:'50cl can',price:3.00,stock:1000,idProduct:'00011').save()
		new Product(beerBrand:'Cuvee des Trolls',productType:'Pack(✕6)',price:15.00,stock:1000,idProduct:'00012').save()
		
		new Product(beerBrand:'Biere du demon',productType:'1L bottle',price:5.00,stock:1000,idProduct:'00013').save()
		new Product(beerBrand:'Biere du demon',productType:'33cl bottle',price:2.5,stock:1000,idProduct:'00014').save()
		new Product(beerBrand:'Biere du demon',productType:'50cl can',price:3.00,stock:1000,idProduct:'00015').save()
		new Product(beerBrand:'Biere du demon',productType:'Pack(✕6)',price:15.00,stock:1000,idProduct:'00016').save()
		
		new Product(beerBrand:'Goudale',productType:'1L bottle',price:5.00,stock:1000,idProduct:'00017').save()
		new Product(beerBrand:'Goudale',productType:'33cl bottle',price:2.5,stock:1000,idProduct:'00018').save()
		new Product(beerBrand:'Goudale',productType:'50cl can',price:3.00,stock:1000,idProduct:'00019').save()
		new Product(beerBrand:'Goudale',productType:'Pack(✕6)',price:15.00,stock:1000,idProduct:'00020').save()
		
		
    }
    def destroy = {
    }
}
