extends Control

# sets time variable to represent an hour
var time = 3600

func _ready():
	
	show_window()
	
	# sets and starts timer on load up
	$Timer.set_wait_time(time)
	$Timer.start()
	
	pass

# function to hide the window away from the user
func hide_window():
	
	# sets window size based on panel size
	OS.set_window_size(Vector2($Panel.rect_size))
	
	# sets position away from view
	OS.set_window_position(Vector2(0-OS.window_size.x, 0-OS.window_size.y))
	
	# sets and starts timer
	$Timer.set_wait_time(time)
	$Timer.start()
	
	pass

# function to show the window
func show_window():
	
	# sets window size based on panel size
	OS.set_window_size(Vector2($Panel.rect_size))
	
	# sets position to the bottom right on the screen
	OS.set_window_position(Vector2(OS.get_screen_size().x-$Panel.rect_size.x, OS.get_screen_size().y-($Panel.rect_size.y+80)))
	
	OS.set_window_always_on_top(true)
	
	OS.request_attention()
	
	pass

# function for when timer is set off
func _on_Timer_timeout():
	
	# shows window using show_window() function
	show_window()
	
	pass


func _on_Button_pressed():
	
	# hides window using hide_window() function
	hide_window()
	print("hello")
	
	pass # Replace with function body.
