set MY_VESS to SHIP.
lock trueradar to 6.9223.
until 0 {
	sas off.
	brakes on.
    LOCK STEERING TO -velocity:surface.
	set grava to ship:body:mu / ship:body:position:mag ^ 2.
	set mass to ship:mass * grava.
	set ratio to mass / ship:availablethrust.
	set truer to alt:radar - trueradar.
	set impacttime to truer / ship:verticalspeed.
	set acc to ship:verticalspeed / impacttime.
	set force to mass * acc.
	set ft to force / ship:availablethrust.
	print ft.
	set gear to truer<100.
	if ft > 0.6 {
		clearscreen.
		print "landing burn has started".
			lock throttle to ft.
						}
							
	if truer < 0.5 {
		clearscreen.
		print "the falcon has landed".
		lock throttle to 0.
		brakes off.
		break.
			     }
		}
