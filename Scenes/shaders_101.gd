extends Node2D
@onready var sprite_2d: Sprite2D = $Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#var TIME:float = Time.get_ticks_msec() / 1000.0 # seconds
	#var s = (sin(TIME) +1 )/2
	#var c = (cos(TIME) +1 )/2
#
	#print("TIME: %0.3f" % TIME)
	#print("SIN: %0.3f" % s)
	#print("COS: %0.3f" % c)
	
	if Input.is_action_just_pressed("increase_speed"):
		var current_flash_speed = sprite_2d.material.get_shader_parameter("flash_speed")
		var new_flash_speed = current_flash_speed + 1;
		sprite_2d.material.set_shader_parameter("flash_speed", new_flash_speed )

		var new_color_1:Vector4 = Vector4(
			randf(), randf(), randf(), 1.0)
		var new_color_2:Vector4 = Vector4(
			randf(), randf(), randf(), 1.0)
	
		sprite_2d.material.set_shader_parameter("color_1", new_color_1)
		sprite_2d.material.set_shader_parameter("color_2", new_color_2)

	
	if Input.is_action_just_pressed("decrease_speed"):
		var current_flash_speed = sprite_2d.material.get_shader_parameter("flash_speed")
		var new_flash_speed = current_flash_speed - 1;
		sprite_2d.material.set_shader_parameter("flash_speed", new_flash_speed )
		var new_color_1:Vector4 = Vector4(
			randf(), randf(), randf(), 1.0)
		var new_color_2:Vector4 = Vector4(
			randf(), randf(), randf(), 1.0)
	
		sprite_2d.material.set_shader_parameter("color_1", new_color_1)
		sprite_2d.material.set_shader_parameter("color_2", new_color_2)
