extends RigidBody2D


export var minSpeed = 150
export var maxSpeed = 250




# Called when the node enters the scene tree for the first time.
func _ready():
	var mobTypes = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mobTypes[randi() % mobTypes.size()]
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#this is to make the Mobs delete themselves when they leave the screen:
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
