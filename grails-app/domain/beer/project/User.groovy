package beer.project

class User {

	String firstName
	String lastName
	String password
	Date birthDate
	String mail
	String address
	
	String toString(){
		"$mail"
	}
		
    static constraints = {
		mail(mail:true)
		password(blank:false, password:true)
    }
}
