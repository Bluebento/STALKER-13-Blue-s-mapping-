/obj/item/stack/medical/gauze/bint
	desc = "A common gauze bandage. It'll work extremely well for stopping any bleeding!"
	icon = 'stalker/icons/items.dmi'
	icon_state = "bint"
	amount = 2
	max_amount = 2
	self_delay = 10

/obj/item/storage/firstaid/ifak
	name = "infantry first-aid kit"
	desc = "A first aid kit with the ability to heal most common types of combat-related injuries. "
	icon = 'stalker/icons/items.dmi'
	icon_state = "ifak"
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/storage/firstaid/ifak/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_SMALL
	STR.max_items = 10
	STR.can_hold = typecacheof(list(/obj/item/stack/medical,
									/obj/item/reagent_containers/pill))

/obj/item/storage/firstaid/ifak/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/gauze/bint = 1,
		/obj/item/reagent_containers/pill/patch/synthflesh = 2,
		/obj/item/reagent_containers/pill/stalker/injector/brute = 1,
		/obj/item/stack/medical/suture = 1,
		/obj/item/stack/medical/mesh = 1,
		/obj/item/reagent_containers/pill/stalker/injector/blood = 1,
		/obj/item/reagent_containers/pill/stalker/injector/painkiller = 1,
		/obj/item/reagent_containers/pill/stalker/injector/oxygen = 1,
		/obj/item/reagent_containers/pill/stalker/injector/epinephrine = 1)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/ai2
	name = "civilian first-aid kit"
	desc = "A first aid kit with the ability to heal most common types damage. Poorly."
	icon = 'stalker/icons/items.dmi'
	icon_state = "aptechkar"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/firstaid/ai2/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_SMALL
	STR.max_items = 10
	STR.can_hold = typecacheof(list(/obj/item/stack/medical,
									/obj/item/reagent_containers/pill))

/obj/item/storage/firstaid/ai2/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/gauze/bint = 1,
		/obj/item/stack/medical/suture = 1,
		/obj/item/stack/medical/mesh = 1,
		/obj/item/stack/medical/bruise_pack = 1,
		/obj/item/stack/medical/ointment = 1,
		/obj/item/reagent_containers/pill/iron = 1,
		/obj/item/reagent_containers/pill/painkiller = 1,
		/obj/item/reagent_containers/pill/charcoal = 1,
		/obj/item/reagent_containers/pill/salbutamol = 1,
		/obj/item/reagent_containers/pill/stalker/injector/epinephrine = 1)
	generate_items_inside(items_inside,src)

/obj/item/reagent_containers/pill/iron
	name = "iron pill"
	desc = "Used to accelerate the treatment of blood deficiency."
	icon_state = "pill17"
	list_reagents = list("iron" = 20)
	rename_with_volume = FALSE

/obj/item/reagent_containers/pill/painkiller
	name = "analgesic pill"
	desc = "Used to suppress pain. Causes stomach cramps after ingestion, eat beforehand!"
	icon_state = "pill17"
	list_reagents = list("mine_salve" = 15)
	rename_with_volume = FALSE

/obj/item/storage/pill_bottle/iron
	name = "bottle of iron pills"
	desc = "Contains pills used to counter blood deficiency."

/obj/item/storage/pill_bottle/iron/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/iron(src)

/obj/item/storage/pill_bottle/bicaridine
	name = "bottle of bicaridine pills"
	desc = "Contains pills used to counter brute damage."

/obj/item/storage/pill_bottle/bicaridine/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/bicaridine(src)

/obj/item/storage/pill_bottle/kelotane
	name = "bottle of kelotane pills"
	desc = "Contains pills used to counter burn damage."

/obj/item/storage/pill_bottle/kelotane/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/kelotane(src)

/obj/item/storage/pill_bottle/salbutamol
	name = "bottle of salbutamol pills"
	desc = "Contains pills used to counter after-blood loss tiredness and oxygen deficiency."

/obj/item/storage/pill_bottle/salbutamol/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/salbutamol(src)

/obj/item/storage/pill_bottle/painkiller
	name = "bottle of analgesic pills"
	desc = "Contains pills used to relieve pain."

/obj/item/storage/pill_bottle/painkiller/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/painkiller(src)

/obj/item/reagent_containers/pill/bicaridine
	name = "bicaridine pill"
	desc = "Used to treat brute damage."
	icon_state = "pill17"
	list_reagents = list("bicaridine" = 20)
	rename_with_volume = FALSE

/obj/item/reagent_containers/pill/kelotane
	name = "kelotane pill"
	desc = "Used to treat burn damage."
	icon_state = "pill19"
	list_reagents = list("kelotane" = 20)
	rename_with_volume = FALSE

/obj/item/storage/firstaid/ecologists
	name = "scientific medical kit"
	desc = "An advanced doctor's bag filled to the brim with various advanced medical equipment and supplies to perform full treatment. This thing is huge!"
	icon = 'stalker/icons/items.dmi'
	icon_state = "scikit"
	w_class = WEIGHT_CLASS_BULKY
	throw_speed = 1
	throw_range = 4

/obj/item/storage/firstaid/ai2/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_SMALL
	STR.max_items = 19
	STR.can_hold = typecacheof(list(/obj/item/stack/medical,
									/obj/item/reagent_containers/pill,
									/obj/item/healthanalyzer,
									/obj/item/clothing/glasses/hud/health,
									/obj/item/clothing/gloves/color/latex,
									/obj/item/storage/pill_bottle))

/obj/item/storage/firstaid/ecologists/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/healthanalyzer = 1,
		/obj/item/clothing/glasses/hud/health = 1,
		/obj/item/clothing/gloves/color/latex = 1,
		/obj/item/stack/medical/gauze/bint = 2,
		/obj/item/stack/medical/suture = 1,
		/obj/item/stack/medical/mesh = 1,
		/obj/item/stack/medical/bruise_pack = 1,
		/obj/item/stack/medical/ointment = 1,
		/obj/item/stack/medical/trauma_kit = 1,
		/obj/item/stack/medical/burn_kit = 1,
		/obj/item/storage/pill_bottle/bicaridine = 1,
		/obj/item/storage/pill_bottle/kelotane = 1,
		/obj/item/storage/pill_bottle/salbutamol = 1,
		/obj/item/storage/pill_bottle/iron = 1,
		/obj/item/storage/pill_bottle/painkiller = 1,
		/obj/item/storage/pill_bottle/charcoal = 1,
		/obj/item/storage/pill_bottle/epinephrine = 1,
		/obj/item/storage/pill_bottle/penacid = 1)
	generate_items_inside(items_inside,src)
