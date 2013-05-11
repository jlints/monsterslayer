###$(document).ready ->
	setInterval ->
		if (i) then $("#name").animate("opacity", "+=50%")
		if (!i) then $("#name").animate("opacity", "-+50%")
	, 200###
		