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
		mail mail:true,unique:true,validator:{val,obj->
			if(!obj.mail.matches(/[_A-Za-z0-9-]+(.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(.[A-Za-z0-9]+)*(.[A-Za-z]{2,})/))
				return 'user.mail.invalidformat'	
		}
		password blank:false, size:3..15,validator:{val,obj->
			if(obj.password != obj.verification)
				return 'user.password.notmatchingpasswords'
		}
    }
}
