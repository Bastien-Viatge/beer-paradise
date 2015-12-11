package beer.project

class User {

	String firstName
	String lastName
	String password
	String verification
	Date birthDate
	String mail
	String address
	
	String toString(){
		"$mail"
	}
	
	
    static constraints = {
		mail(mail:true,unique:true)
		password blank:false, size:5..15, matches:/[\S]+/,validator:{val,obj->
			if(obj.password != obj.verification)
				return 'user.password.notmatchingpasswords'
		}
    }
}
