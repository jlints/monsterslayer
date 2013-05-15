$(document).ready ->
	possibleWords = ["Nico", "Rocks", "A", "Lot!"]
	usedUp = 0
	donesoFar = ""
	$(document).keydown (e) ->
		#if parseInt(e.keycode) is 32
		$(document).unbind()
		$(".1").remove()
		$("#2").fadeIn('fast')
		paper = Raphael(document.getElementById("2"), 600, 600)
		person = paper.image("person.png", 150, 300, 400, 300)
		goblin = paper.image("goblin/goblin.png", 230, 180, 300, 300)
		goblin.health = 3
		#word = paper.text( 350 , 220,possibleWords[usedUp])
		#word.attr("font-size", "30pt")
		#word.attr("font-family", "Acknowledgement")
		goblin.click (e)->
					if (goblin.health <= 0)
						goblinDie = Raphael.animation({height:0, width:0})
						goblin.animate(goblinDie)
						deadGoblin = paper.image("goblin/goblindead1.jpg", 250, 180, 500, 300)
						setTimeout ->
							goblinDie = Raphael.animation({height:0, width:0}, 2000)
							deadGoblin.animate(goblinDie)
						, 1000
						t = paper.text(300, 300, "On to the next Level!")
						t.attr("font-family", "LeagueGothic")
						t.attr("font-size", "50pt")
						t.attr("color", "green")
						setTimeout ->
							$("#2").remove()
							$("#3").fadeIn('fast')
							paper = Raphael(document.getElementById("3"), 600, 600)
							person = paper.image("person.png", 150, 300, 400, 300)
							goblin = paper.image("goblin/goblin2.png", 250, 180, 300, 300)
							goblin2 = paper.image("goblin/goblin.png", 300, 180, 300, 300)
							#word = paper.text(possibleWords[usedUp],250, 170)
							#++usedUp						
							goblin2.click ->
								goblinDie = Raphael.animation({height:0, width:0})
								goblin2.animate(goblinDie)
							goblin.click ->
								goblinDie = Raphael.animation({height:0, width:0})
								goblin.animate(goblinDie)
								t = paper.text(300, 300, "On to the next Level!")
								t.attr("font-family", "LeagueGothic")
								t.attr("font-size", "50pt")
								t.attr("color", "green")
								setTimeout ->
									$("#3").remove()
									$("#4").fadeIn('fast')
									paper = Raphael(document.getElementById("4"), 600, 600)
									person = paper.image("person.png", 150, 300, 400, 300)
									goblin = paper.image("goblin/goblin2.png", 250, 180, 300, 300)
									goblin2 = paper.image("goblin/goblin.png", 300, 180, 300, 300)
								,5000
						, 5000
					else
						setTimeout ->
							goblin.attr("src", "goblin/goblinhurt.png")
						,100
						setTimeout ->
							goblin.attr("src", "goblin/goblin.png")
						, 300
						--goblin.health