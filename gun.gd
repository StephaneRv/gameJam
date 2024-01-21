extends Area2D

func _physics_process(delta):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range.front()
		look_at(target_enemy.global_position)

func shoot():
	const BULLET = preload("res://bullet.tscn")
	var new_bullet = BULLET.instantiate()
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(new_bullet)

	if GlobalVar.overloadScore >= 100 and GlobalVar.isOverload == false:
		GlobalVar.isOverload = true
		%OverloadTimer.start(4.0)
		%Timer.wait_time = 0.10
		
func _on_timer_timeout():
	shoot()

func _on_overload_timer_timeout():
	%Timer.wait_time = 0.33
	GlobalVar.overloadScore = 0	
	GlobalVar.isOverload = false
