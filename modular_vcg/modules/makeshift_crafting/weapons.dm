/obj/item/claymore/ms13/machete/shishkebab
	name = "shishkebab"
	desc = "A slightly dull makeshift sword, rigged up to dispense hot injustice at the flip of a switch."
	icon_state = "shishkebab_off"
	inhand_icon_state = "shishkebab_off"
	worn_icon_state = "shishkebab"
	pickup_sound = 'mojave/sound/ms13weapons/meleesounds/blade_pickup.ogg'
	sharpness = SHARP_EDGED
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_BACK
	subtractible_armour_penetration = 25
	edge_protection_penetration = 5
	wound_bonus = 5
	bare_wound_bonus = 5
	throwforce = 10
	grid_width = 64
	grid_height = 128
	mining_mult = -0.65
	var/on = FALSE

/obj/item/claymore/ms13/machete/shishkebab/attack_self(mob/user)
	on = !on
	icon_state = "shishkebab_[on ? "on" : "off"]"
	inhand_icon_state = "shishkebab_[on ? "on" : "off"]"

	if(on)
		attack_verb_continuous = list("burned", "welded", "cauterized", "melted", "charred")
		attack_verb_simple = list("burn", "weld", "cauterize", "melt", "char")
		to_chat(user, "<span class='notice'>You open the valve and click the igniter, [src] begins to eject flames.")
		hitsound = list('mojave/sound/ms13weapons/meleesounds/shishkebab_hit1.ogg', 'mojave/sound/ms13weapons/meleesounds/shishkebab_hit2.ogg')
		damtype = "burn"
		force = 30

	else
		attack_verb_continuous = list("stabs", "slices", "slashes", "cuts", "rends")
		attack_verb_simple = list("stab", "slice", "slash", "cut", "rend")
		to_chat(user, "<span class='notice'>As you close the valve on [src], the flame goes out.")
		hitsound = list('mojave/sound/ms13weapons/meleesounds/blade_hit1.ogg', 'mojave/sound/ms13weapons/meleesounds/blade_hit2.ogg')
		damtype = "brute"
		force = 20
