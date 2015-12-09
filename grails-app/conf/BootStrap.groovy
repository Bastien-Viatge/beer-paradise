import beer.project.Beer
import beer.project.Product
import beer.project.User

class BootStrap {

    def init = { servletContext ->
		def date = new Date(System.currentTimeMillis())
		new User(firstName:'admin',lastName:'admin',password:'admin',birthDate:date,mail:'admin@beer-paradise.com',address:'test').save()
		new Beer(beerBrand:'Leffe',presentation:'Trop bonne de ouffe !',opinion:9.05,photoName:"leffe.png").save()
		new Beer(beerBrand:'Choufe',presentation:'Grosse cuite, petit prix',opinion:9.15,photoName:"chouffe.jpg").save()
		new Beer(beerBrand:'Cuv�e des Trolls',presentation:'M�me les moches ont le droit de boire.',opinion:6.45,photoName:"rince.jpg").save()
		new Beer(beerBrand:'Bi�re du d�mon',presentation:'Diaboliquement douce..',opinion:6.15,photoName:"demon.png").save()
		new Beer(beerBrand:'Goudale',presentation:'Si y\'a du go�t, c\'est du Goudale.',opinion:8.95,photoName:"goudale.jpg").save()
		new Product(beerBrand:'Leffe',productType:'Pack x6',price:6.50,stock:412,idProduct:'LEF_PX6').save()
		new Product(beerBrand:'Leffe',productType:'Pack x12',price:12,stock:247,idProduct:'LEF_PX12').save()
		new Product(beerBrand:'Leffe',productType:'Bottle 1L',price:3.50,stock:456,idProduct:'LEF_B1L').save()
		new Product(beerBrand:'Leffe',productType:'Bottle 0.5L',price:2.25,stock:472,idProduct:'LEF_B05L').save()
    }
    def destroy = {
    }
}
