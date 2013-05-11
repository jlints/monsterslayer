$(document).ready ->
	alert "hello"
	$(document).keypress (e) ->
		if e.keycode is "32"
			$(".1").fadeOut "slow", ->
				$("#2").fadeIn("slow")