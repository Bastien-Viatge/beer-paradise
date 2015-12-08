import beer.project.Beer
import beer.project.User

class BootStrap {

    def init = { servletContext ->
		def date = new Date(System.currentTimeMillis())
		new User(firstName:'admin',lastName:'admin',password:'admin',birthDate:date,mail:'admin@beer-paradise.com',address:'test').save()
		new Beer(beerBrand:'Leffe',presentation:'Trop bonne de ouffe !',opinion:9.05,photoName:"leffe.png").save()
		new Beer(beerBrand:'Choufe',presentation:'Grosse cuite, petit prix',opinion:9.15,photoName:"chouffe.jpg").save()
		new Beer(beerBrand:'Cuvée des Trolls',presentation:'Même les moches ont le droit de boire.',opinion:6.45,photoName:"rince.jpg").save()
		new Beer(beerBrand:'Bière du démon',presentation:'Diaboliquement douce..',opinion:6.15,photoName:"demon.png").save()
		new Beer(beerBrand:'Goudale',presentation:'Si y\'a du goût, c\'est du Goudale.',opinion:8.95,photoName:"goudale.jpg").save()
		
    }
    def destroy = {
    }
}
