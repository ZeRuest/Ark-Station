/proc/sanitize_islist(value, default)
	if(islist(value) && length(value))
		return value
	if(default)
		return default