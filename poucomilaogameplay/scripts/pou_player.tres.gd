extends CharacterBody3D

@export var speed: float = 5.0   # velocidade do player
@export var limite_esquerda: float = -5.0
@export var limite_direita: float = 5.0

func _physics_process(delta: float) -> void:
	var direction := Vector3.ZERO

	# mover no eixo X (esquerda/direita)
	if Input.is_action_pressed("left"):
		direction.x = 1
	elif Input.is_action_pressed("right"):
		direction.x = -1

	# aplica velocidade
	velocity.x = direction.x * speed
	velocity.y = 0 # sem gravidade
	

	move_and_slide()

	
