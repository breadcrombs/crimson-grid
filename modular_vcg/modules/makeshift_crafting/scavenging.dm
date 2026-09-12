/datum/storyteller_roll/scavenge
	bumper_text = "Scavenging"
	difficulty = 5
	applicable_stats = list(STAT_PERCEPTION, STAT_SURVIVAL)
	roll_output_type = ROLL_PRIVATE

/obj/structure/trashbag
	var/remaining_contents = rand(1, 6)

/obj/structure/trashbag/attack_hand_secondary(mob/user, list/modifiers)
	. = ..()
