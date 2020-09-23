var/datum/species/shapeshifter/promethean/prometheans

// Species definition follows.
/datum/species/shapeshifter/promethean

	name =             SPECIES_PROMETHEAN
	name_plural =      "Prometheans"
	blurb =            "Prometheans (Macrolimus artificialis) are a species of artificially-created gelatinous humanoids, \
	chiefly characterized by their primarily liquid bodies and ability to change their bodily shape and color in order to  \
	mimic many forms of life. Derived from the Aetolian giant slime (Macrolimus vulgaris) inhabiting the warm, tropical planet \
	of Aetolus, they are a relatively new lab-created sapient species, and as such many things about them have yet to be comprehensively studied. \
	What has Science done?"
	catalogue_data = list(/datum/category_item/catalogue/fauna/promethean)
	show_ssd =         "totally quiescent"
	death_message =    "rapidly loses cohesion, splattering across the ground..."
	knockout_message = "collapses inwards, forming a disordered puddle of goo."
	remains_type = /obj/effect/decal/cleanable/ash

	blood_color = "#05FF9B"
	flesh_color = "#05FFFB"

	hunger_factor = 0.07 //As of writing, original was 0.1 - Slows hunger rate (some more)
	reagent_tag =      IS_SLIME
	mob_size =         MOB_MEDIUM
	bump_flag =        SLIME
	push_flags = ~HEAVY
	swap_flags = ~HEAVY
	flags =            NO_SCAN | NO_SLIP | NO_MINOR_CUT | NO_HALLUCINATION | NO_INFECT
	appearance_flags = HAS_SKIN_COLOR | HAS_EYE_COLOR | HAS_HAIR_COLOR | RADIATION_GLOWS | HAS_UNDERWEAR
	spawn_flags		 = SPECIES_CAN_JOIN
	health_hud_intensity = 2
	num_alternate_languages = 2 // citadel change, not stuck with one other lang
	species_language = LANGUAGE_SOL_COMMON
	secondary_langs = list(LANGUAGE_SOL_COMMON)	// For some reason, having this as their species language does not allow it to be chosen.
	assisted_langs = list(LANGUAGE_ROOTGLOBAL, LANGUAGE_VOX)	// Prometheans are weird, let's just assume they can use basically any language.

	breath_type = null
	poison_type = null

	speech_bubble_appearance = "slime"

	male_cough_sounds = list('sound/effects/slime_squish.ogg')
	female_cough_sounds = list('sound/effects/slime_squish.ogg')

	min_age =		18
	max_age =		80

	economic_modifier = 3

	gluttonous =	0
	virus_immune =	1
	blood_volume =	560
	slowdown = -0.2 // citadel change
	brute_mod =		0.5 // citadel change, used to be 0.75
	burn_mod =		2
	oxy_mod =		0
	flash_mod =		0.5 //No centralized, lensed eyes.
	item_slowdown_mod = 0.66 // citadel change, used to be 1.33

	cloning_modifier = /datum/modifier/cloning_sickness/promethean

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 320 //Default 360
	heat_level_2 = 370 //Default 400
	heat_level_3 = 600 //Default 1000

	body_temperature = T20C	// Room temperature

	rarity_value = 5
	siemens_coefficient = 1 //As of writing, original was 0.4 (bad)

	genders = list(MALE, FEMALE, NEUTER, PLURAL)

	unarmed_types = list(/datum/unarmed_attack/slime_glomp)

	has_organ =     list(O_BRAIN = /obj/item/organ/internal/brain/slime,
						O_HEART = /obj/item/organ/internal/heart/grey/colormatch/slime,
						O_REGBRUTE = /obj/item/organ/internal/regennetwork,
						O_REGBURN = /obj/item/organ/internal/regennetwork/burn,
						O_REGOXY = /obj/item/organ/internal/regennetwork/oxy,
						O_REGTOX = /obj/item/organ/internal/regennetwork/tox)

	dispersed_eyes = TRUE

	has_limbs = list(
		BP_TORSO =  list("path" = /obj/item/organ/external/chest/unbreakable/slime),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin/unbreakable/slime),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/unbreakable/slime),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm/unbreakable/slime),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right/unbreakable/slime),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg/unbreakable/slime),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right/unbreakable/slime),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/unbreakable/slime),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/unbreakable/slime),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/unbreakable/slime),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/unbreakable/slime)
		)
	heat_discomfort_strings = list("You feel too warm.")
	cold_discomfort_strings = list("You feel too cool.")

	inherent_verbs = list(
		/mob/living/carbon/human/proc/shapeshifter_select_shape,
		/mob/living/carbon/human/proc/shapeshifter_select_colour,
		/mob/living/carbon/human/proc/shapeshifter_select_hair,
		/mob/living/carbon/human/proc/shapeshifter_select_hair_colors,
		/mob/living/carbon/human/proc/shapeshifter_select_gender,
		/mob/living/carbon/human/proc/regenerate,
		/mob/living/proc/set_size,
		/mob/living/carbon/human/proc/succubus_drain,
		/mob/living/carbon/human/proc/succubus_drain_finalize,
		/mob/living/carbon/human/proc/succubus_drain_lethal,
		/mob/living/carbon/human/proc/slime_feed,
		/mob/living/proc/eat_trash,
		/mob/living/carbon/human/proc/promethean_select_opaqueness
		)

	valid_transform_species = list(
		"Human", "Unathi", "Tajara", "Skrell",
		"Diona", "Teshari", "Monkey","Sergal",
		"Akula","Nevrean","Highlander Zorren",
		"Flatland Zorren", "Vulpkanin", "Vasilissan",
		"Rapala", "Neaera", "Stok", "Farwa", "Sobaka",
		"Wolpin", "Saru", "Sparra")

	var/heal_rate = 0.35 //As of writing, original was 0.2 - speeds up regen
	active_regen_mult = 0.66 //As of writing, original was 1 (good)

	color_mult = 1
	trashcan = 1 //They have goopy bodies. They can just dissolve things within them.

	wikilink="https://wiki.vore-station.net/Promethean"

/datum/species/shapeshifter/promethean/New()
	..()
	prometheans = src

/datum/species/shapeshifter/promethean/equip_survival_gear(var/mob/living/carbon/human/H)
	var/boxtype = pick(list(/obj/item/storage/toolbox/lunchbox,
							/obj/item/storage/toolbox/lunchbox/heart,
							/obj/item/storage/toolbox/lunchbox/cat,
							/obj/item/storage/toolbox/lunchbox/nt,
							/obj/item/storage/toolbox/lunchbox/mars,
							/obj/item/storage/toolbox/lunchbox/cti,
							/obj/item/storage/toolbox/lunchbox/nymph,
							/obj/item/storage/toolbox/lunchbox/syndicate))	//Only pick the empty types
	var/obj/item/storage/toolbox/lunchbox/L = new boxtype(get_turf(H))
	new /obj/item/reagent_containers/food/snacks/candy/proteinbar(L)
	if(H.backbag == 1)
		H.equip_to_slot_or_del(L, slot_r_hand)
	else
		H.equip_to_slot_or_del(L, slot_in_backpack)

/datum/species/shapeshifter/promethean/hug(var/mob/living/carbon/human/H, var/mob/living/target)

	if(H.zone_sel.selecting == "head" || H.zone_sel.selecting == "r_hand" || H.zone_sel.selecting == "l_hand") return ..() //VOREStation Edit
	var/t_him = "them"
	if(ishuman(target))
		var/mob/living/carbon/human/T = target
		switch(T.identifying_gender)
			if(MALE)
				t_him = "him"
			if(FEMALE)
				t_him = "her"
	else
		switch(target.gender)
			if(MALE)
				t_him = "him"
			if(FEMALE)
				t_him = "her"

	H.visible_message("<span class='notice'>\The [H] glomps [target] to make [t_him] feel better!</span>", \
					"<span class='notice'>You glomp [target] to make [t_him] feel better!</span>")
	H.apply_stored_shock_to(target)

/datum/species/shapeshifter/promethean/handle_death(var/mob/living/carbon/human/H)
	spawn(1)
		if(H)
			H.gib()

/datum/species/shapeshifter/promethean/handle_environment_special(var/mob/living/carbon/human/H)
/* VOREStation Removal - Too crazy with our uncapped hunger and slowdown stuff.
	var/turf/T = H.loc
	if(istype(T))
		var/obj/effect/decal/cleanable/C = locate() in T
		if(C && !(H.shoes || (H.wear_suit && (H.wear_suit.body_parts_covered & FEET))))
			qdel(C)
			if (istype(T, /turf/simulated))
				var/turf/simulated/S = T
				S.dirt = 0

			H.nutrition = min(500, max(0, H.nutrition + rand(15, 30)))
VOREStation Removal End */
	// Heal remaining damage.
	if(H.fire_stacks >= 0)
		if(H.getBruteLoss() || H.getFireLoss() || H.getOxyLoss() || H.getToxLoss())
			var/nutrition_cost = 0
			var/nutrition_debt = H.getBruteLoss()
			var/starve_mod = 1
			if(H.nutrition <= 25)
				starve_mod = 0.75
			H.adjustBruteLoss(-heal_rate * starve_mod)
			nutrition_cost += nutrition_debt - H.getBruteLoss()

			nutrition_debt = H.getFireLoss()
			H.adjustFireLoss(-heal_rate * starve_mod)
			nutrition_cost += nutrition_debt - H.getFireLoss()

			nutrition_debt = H.getOxyLoss()
			H.adjustOxyLoss(-heal_rate * starve_mod)
			nutrition_cost += nutrition_debt - H.getOxyLoss()

			nutrition_debt = H.getToxLoss()
			H.adjustToxLoss(-heal_rate * starve_mod)
			nutrition_cost += nutrition_debt - H.getToxLoss()
			H.nutrition -= (2 * nutrition_cost) //Costs Nutrition when damage is being repaired, corresponding to the amount of damage being repaired.
			H.nutrition = max(0, H.nutrition) //Ensure it's not below 0.
	//else//VOREStation Removal
		//H.adjustToxLoss(2*heal_rate)	// Doubled because 0.5 is miniscule, and fire_stacks are capped in both directions

/datum/species/shapeshifter/promethean/get_blood_colour(var/mob/living/carbon/human/H)
	return (H ? rgb(H.r_skin, H.g_skin, H.b_skin) : ..())

/datum/species/shapeshifter/promethean/get_flesh_colour(var/mob/living/carbon/human/H)
	return (H ? rgb(H.r_skin, H.g_skin, H.b_skin) : ..())

/datum/species/shapeshifter/promethean/get_additional_examine_text(var/mob/living/carbon/human/H)

	if(!stored_shock_by_ref["\ref[H]"])
		return

	var/t_she = "She is"
	if(H.identifying_gender == MALE)
		t_she = "He is"
	else if(H.identifying_gender == PLURAL)
		t_she = "They are"
	else if(H.identifying_gender == NEUTER)
		t_she = "It is"
	else if(H.identifying_gender == HERM) //VOREStation Edit
		t_she = "Shi is"

	switch(stored_shock_by_ref["\ref[H]"])
		if(1 to 10)
			return "[t_she] flickering gently with a little electrical activity."
		if(11 to 20)
			return "[t_she] glowing gently with moderate levels of electrical activity.\n"
		if(21 to 35)
			return "<span class='warning'>[t_she] glowing brightly with high levels of electrical activity.</span>"
		if(35 to INFINITY)
			return "<span class='danger'>[t_she] radiating massive levels of electrical activity!</span>"
