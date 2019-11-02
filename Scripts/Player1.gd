extends KinematicBody

var speed: int = 200
var direction: Vector3

func _physics_process(delta):
    direction = Vector3()
    
    if Input.is_action_pressed("ui_left"):
        direction.x -= 1
    if Input.is_action_pressed("ui_right"):
        direction.x += 1
    if Input.is_action_pressed("ui_up"):
        direction.z -= 1
    if Input.is_action_pressed("ui_down"):
        direction.z += 1
    
    direction = direction.normalized()
    direction *= speed * delta
    
    direction = move_and_slide( direction, Vector3(0, 1, 0) )