function logUser(){
  var div = document.getElementById("loginBox");
  var vc = document.getElementById("bodyContainer");

  var welcome = '<p>Bienvenida a la página, Sonia</p>';
  welcome += '<p>Con un servidor detras todo molaría mucho más</p>';
  welcome += '<img src="images/mrgreen.png"/>';
  
  var unwelcome = '<img id="haha" src="images/haha.gif"/>';
  unwelcome += '<audio src="sounds/hahaha.mp3" autoplay loop></audio>';
  
  if (validate()) {
      div.innerHTML = welcome;
    }else{
      document.body.innerHTML = unwelcome;
      document.body.style.backgroundImage = "url('')";
      document.body.style.backgroundColor = "black";
  }
}
