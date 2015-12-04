import beer.project.Beer
import beer.project.User

class BootStrap {

    def init = { servletContext ->
		def date = new Date(System.currentTimeMillis())
		new User(firstName:'admin',lastName:'admin',password:'admin',birthDate:date,mail:'admin@beer-paradise.com',address:'test').save()
		new Beer(beerName:'Leffe',presentation:'Trop bonne de ouffe !',price:6.15,quantity:200,photoName:"leffe.png").save()
		new Beer(beerName:'Choufe',presentation:'Grosse cuite, petit prix',price:5.15,quantity:200,photoName:"rince.jpg").save()
		new Beer(beerName:'Cuvée des Trolls',presentation:'Même les moches ont le droit de boire.',price:5.45,quantity:200,photoName:"chouffe.jpg").save()
		new Beer(beerName:'Bière du démon',presentation:'Diaboliquement douce..',price:2.15,quantity:200,photoName:"demon.png").save()
		new Beer(beerName:'Goudale',presentation:'Si y\'a du goût, c\'est du Goudale.',price:2.15,quantity:200,photoName:"goudale.jpg").save()
		
    }
    def destroy = {
    }
}
