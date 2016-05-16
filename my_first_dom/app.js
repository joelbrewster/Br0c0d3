var button = document.getElementsByTagName('button')[0];
//var body = document.getElementsByTagName('body')[0];

//function getRandomColorNumber(){
  //var colors = Math.floor(Math.random()*16777215);
  //colorString = "#"+colors.toString;
  //return "#" + Math.random().toString(16).slice(2, 8);
//}

function getRandomColorRGBA(){
  var red = Math.floor(Math.random() * 255);
  var green = Math.floor(Math.random() * 255);
  var blue = Math.floor(Math.random() * 255);
  var alpha = Math.random();

  return "rgba("+red+","+green+","+blue+","+alpha+")";
}

console.log(getRandomColorRGBA());

var h1 = document.getElementsByTagName('h1')[1];

button.addEventListener('click', function(event){
  window.clearInterval(scrollForEver);
  document.body.style.backgroundColor = getRandomColorRGBA();
  console.log(getRandomColorRGBA());
  var h1 = document.getElementsByTagName('h1')[1];
  document.body.style.backgroundColor = getRandomColorRGBA();
  h1.innerHTML = getRandomColorRGBA();
});

var scrollForEver = window.setInterval(function(){
  //window.scrollBy(0, 5000);
  document.body.style.backgroundColor = getRandomColorRGBA();
}, 50);

window.setTimeout(function(){
  window.clearInterval(scrollForEver);
}, 1000 * 10);

