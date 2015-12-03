
<!DOCTYPE html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script language="javascript" type="text/javascript" >






// Vérification des champs obligatoires du formulaire
function verif()
{
	
	if (myForm.Name.value == "")
	{
		alert ('Please enter your name');
		myForm.Name.focus();
		return false;
	}
	if(myForm.Surname.value == "")
	{
		alert ('Please enter your Surname');
		myForm.Surname.focus();
		return false;
	}

	if(myForm.Password.value == "")
	{
		alert ('Please choose a password');
		myForm.Password.focus();
		return false;
	}
    if(myForm.Validation.value != myForm.Password.value)
    {
        alert ('The validation is not correct, try again');
        myForm.Validation.focus();
        return false;
    }
    
	if(myForm.Mail.value == "")
	{
		alert ('Please enter your Mail');
		myForm.Mail.focus();
		return false;
	}

	else {return true;}
}



</script>
</head>
<body>
</body>
</html>