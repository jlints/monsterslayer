$(document).ready ->
	$(document).keydown (e) ->
		#if parseInt(e.keycode) is 32
		$(document).unbind()
		$(".1").remove()
		$("#2").fadeIn('fast')
		paper = Raphael(document.getElementById("2"), 600, 600)
		person = paper.image("person.png", 150, 300, 400, 300)
		goblin = paper.image("goblin.png", 250, 180, 300, 300)
		goblin.click ->
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
					, 5000