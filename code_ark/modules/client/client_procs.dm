/client/New(TopicData)
	. = ..()
	reputation = new(src)

	if(SSinput.initialized)
		set_macros()
		update_movement_keys()

/client/Topic(href, href_list, hsrc)
	. = ..()

	// Keypress passthrough
	if(href_list["__keydown"])
		var/keycode = browser_keycode_to_byond(href_list["__keydown"])
		if(keycode)
			keyDown(keycode)
		return
	if(href_list["__keyup"])
		var/keycode = browser_keycode_to_byond(href_list["__keyup"])
		if(keycode)
			keyUp(keycode)
		return