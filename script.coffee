$(document).ready ->
	$(document).keydown (e) ->
		#if parseInt(e.keycode) is 32
		$(document).unbind()
		$(".1").remove()
		$("#2").fadeIn('fast')
		paper = Raphael(document.getElementById("2"), 600, 600)
		goblin = paper.image("goblin.png", 280, 280, 300, 300)
		person = paper.image("person.png", 150, 300, 400, 300)
		goblinDie = Raphael.animation({height:0, width:0})
		$(document).click ->
			goblin.animate(goblinDie)