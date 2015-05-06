

function validate(){
  var userAllowed = 'Sonia';
  var passAllowed = 'p0nM3uN1o';

  var pass = document.getElementById("password").value;
  var user = document.getElementById("user").value;
  
  if ((userAllowed==user)&&(passAllowed==pass)) {
    return true;
  }else{
    return false;
  } 
}

function showCampaigns () {
	if (document.getElementById('campaigns').style.display == 'block') {
		document.getElementById('campaigns').style.display = 'none';
	}else{
		document.getElementById('campaigns').style.display = 'block';
	}
}
