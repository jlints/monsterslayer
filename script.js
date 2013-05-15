// Generated by CoffeeScript 1.6.2
(function() {
  $(document).ready(function() {
    var donesoFar, possibleWords, usedUp;

    possibleWords = ["Nico", "Rocks", "A", "Lot!"];
    usedUp = 0;
    donesoFar = "";
    return $(document).keydown(function(e) {
      var goblin, paper, person;

      $(document).unbind();
      $(".1").remove();
      $("#2").fadeIn('fast');
      paper = Raphael(document.getElementById("2"), 600, 600);
      person = paper.image("person.png", 150, 300, 400, 300);
      goblin = paper.image("goblin/goblin.png", 230, 180, 300, 300);
      goblin.health = 3;
      return goblin.click(function(e) {
        var deadGoblin, goblinDie, t;

        if (goblin.health <= 0) {
          goblinDie = Raphael.animation({
            height: 0,
            width: 0
          });
          goblin.animate(goblinDie);
          deadGoblin = paper.image("goblin/goblindead1.jpg", 250, 180, 500, 300);
          setTimeout(function() {
            goblinDie = Raphael.animation({
              height: 0,
              width: 0
            }, 2000);
            return deadGoblin.animate(goblinDie);
          }, 1000);
          t = paper.text(300, 300, "On to the next Level!");
          t.attr("font-family", "LeagueGothic");
          t.attr("font-size", "50pt");
          t.attr("color", "green");
          return setTimeout(function() {
            var goblin2;

            $("#2").remove();
            $("#3").fadeIn('fast');
            paper = Raphael(document.getElementById("3"), 600, 600);
            person = paper.image("person.png", 150, 300, 400, 300);
            goblin = paper.image("goblin/goblin2.png", 250, 180, 300, 300);
            goblin2 = paper.image("goblin/goblin.png", 300, 180, 300, 300);
            goblin2.click(function() {
              goblinDie = Raphael.animation({
                height: 0,
                width: 0
              });
              return goblin2.animate(goblinDie);
            });
            return goblin.click(function() {
              goblinDie = Raphael.animation({
                height: 0,
                width: 0
              });
              goblin.animate(goblinDie);
              t = paper.text(300, 300, "On to the next Level!");
              t.attr("font-family", "LeagueGothic");
              t.attr("font-size", "50pt");
              t.attr("color", "green");
              return setTimeout(function() {
                $("#3").remove();
                $("#4").fadeIn('fast');
                paper = Raphael(document.getElementById("4"), 600, 600);
                person = paper.image("person.png", 150, 300, 400, 300);
                goblin = paper.image("goblin/goblin2.png", 250, 180, 300, 300);
                return goblin2 = paper.image("goblin/goblin.png", 300, 180, 300, 300);
              }, 5000);
            });
          }, 5000);
        } else {
          setTimeout(function() {
            return goblin.attr("src", "goblin/goblinhurt.png");
          }, 100);
          setTimeout(function() {
            return goblin.attr("src", "goblin/goblin.png");
          }, 300);
          return --goblin.health;
        }
      });
    });
  });

}).call(this);
