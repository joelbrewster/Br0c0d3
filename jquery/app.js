//var listItems = document.getElementsByTagName('li');

//for (var i = 0; i < listItems.length; i++){
//var listItem = listItems[i];
//listItem.style.display = "none";
//}

//$('img').hide('slow');
//var img = document.querySelectorAll('img')[0];
//img.addEventListener('click', function(event){
//console.log(event);
//});

// var listItems = document.getElementsByTagName('li');
//
// for (var i = 0; i < listItems.length; i++) {
//     var listItem = listItems[i];
//     listItem.style.display = "none";
// }
// var img = document.querySelectorAll('img#daym')[0];
// img.addEventListener('click', function(event){
//     console.log(event);
// });

$(function(){

  console.log('DOM READY TO BE MANIPULATED');

  $('img')
  .width(40);

  var imgWidth = $('img').width();
  var imgHeight = $('img').height();

  function getRandomX(){
    var randomX = Math.random() * window.innerWidth;
    if(randomX + imgWidth > window.innerWidth){
      randomX -= imgWidth;
    }
    return randomX;
  }

  function getRandomY(){
    var randomY = Math.random() * window.innerHeight;
    if(randomY + imgHeight > window.innerHeight){
      randomY -= imgHeight;
    }
    console.log(randomY);
    console.log(window.innerHeight);
    return randomY;
  }

  $('img')
  .css({
    position: 'absolute',
    top: getRandomY(),
    left: getRandomX()
  })
  .mouseenter(function(){
    $(this).animate({
      top: getRandomY(),
      left: getRandomX()
    }, 50);
  })
  .on('click', function(event){
    console.log($(this));
  });

  //Way one
  // var h1 = $('<h1>SOMETHING</h1>');
  // var h1_v2 = $('<h1>')
  // .text('Something')
  // .addClass('redTitle')
  // .attr('id', 'myId')
  // .on('click', function(event){
    //     console.log('You clicked on the H1');
    // });
    //
    // $('body').append(h1_v2);

  });
