// reveal target
// css
// reset game
$(function(){
    var target = $('#target');
    var gameArea = $('#gameArea');
    var scoreText = $('h1#score');
    var remainingText = $('h1#roundsRemaining');
    var exactClick = 500;
    var playerScore = 0;
    var targetX, targetY;
    var numberOfRounds = 5;
    var currentRoundNumber = 1;
    var interval;
    var timerLength = 10;
    var secondsPassed = 0;
    var myTimer;

    function timerTick(){
      myTimer = window.setInterval(function(){
        console.log('Timer tick!');
        secondsPassed++;
        if(secondsPassed === timerLength){
          window.clearInterval(myTimer);
          currentRoundNumber++;
          remainingText.text('Clicks remaining: ' + (numberOfRounds - currentRoundNumber + 1));
          secondsPassed = 0;
          if(currentRoundNumber <= numberOfRounds){
            timerTick();
          } else{
            gameArea.off('click');
          }
        }
      }, 1000);
    }
    timerTick();

    remainingText.text('Clicks remaining: ' + (numberOfRounds - currentRoundNumber + 1));

    $('h1').on('click', function(event) {
        event.stopPropagation();
    });

    function getRandomNumber(min, max){
        return Math.floor(Math.random() * (max-min+1) + min);
    }

    function placeTarget(){
        target.css({
            left: getRandomNumber(0, gameArea.width() - target.width()),
            top: getRandomNumber(0, gameArea.height() - target.height())
        });
        targetX = target.offset().left - gameArea.offset().left;
        targetY = target.offset().top - gameArea.offset().top;
    }

    placeTarget();

    // target.on('click', function(event){
    //   event.stopPropagation();
    //   //Score an exact click
    //   console.log("You got it!");
    // });

    gameArea.on('click', function(event){
        // Scoring a near click
        if(event.target === target[0]){
            exactClick=exactClick+1;
            playerScore += exactClick;
        }
        else {

            var clickX = event.offsetX;
            var clickY = event.offsetY;

            var distanceX = Math.abs(targetX - clickX);
            var distanceY = Math.abs(targetY - clickY);
            var distance = Math.sqrt(distanceX * distanceX + distanceY * distanceY);

            var worstCase = Math.sqrt(gameArea.width() * gameArea.width() + gameArea.height() * gameArea.height());
            var distanceScore = Math.round(Math.pow((1 - distance / worstCase), 5) * exactClick);
            playerScore += distanceScore;
        }
        console.log('Your score is: ' + playerScore + " out of 2,500");
        window.clearInterval(myTimer);
        if(currentRoundNumber < numberOfRounds) {
            placeTarget();
        }
        else {
            console.log("Game over man!");
            gameArea.off('click');
        }
        scoreText.text("Score: " + playerScore);
        currentRoundNumber++;
        remainingText.text('Clicks remaining: ' + (numberOfRounds - currentRoundNumber + 1));
    });
});
