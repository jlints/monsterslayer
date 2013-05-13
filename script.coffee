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
		goblin = paper.image("goblin.png", 250, 180, 300, 300)
		word = paper.text( 350 , 220,possibleWords[usedUp])
		word.attr("font-size", "30pt")
		word.attr("font-family", "Acknowledgement")
		$(document).keypress (e)->
					key = String.fromCharCode(e.which)
					donesoFar += key
					alert donesoFar
					alert possibleWords[usedUp]
					if (donesoFar is possibleWords[usedUp])
						++usedUp
						goblinDie = Raphael.animation({height:0, width:0})
						goblin.animate(goblinDie)
						t = paper.text(300, 300, "On to the next Level!")
						t.attr("font-family", "LeagueGothic")
						t.attr("font-size", "50pt")
						t.attr("color", "green")
						setTimeout ->
							$("#2").remove()
							$("#3").fadeIn('fast')
							paper = Raphael(document.getElementById("3"), 600, 600)
							person = paper.image("person.png", 150, 300, 400, 300)
							goblin = paper.image("goblin2.png", 250, 180, 300, 300)
							goblin2 = paper.image("goblin.png", 300, 180, 300, 300)
							word = paper.text(possibleWords[usedUp],250, 170)
							++usedUp						
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
									goblin = paper.image("goblin2.png", 250, 180, 300, 300)
									goblin2 = paper.image("goblin.png", 300, 180, 300, 300)
								,5000
						, 5000