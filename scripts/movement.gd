extends Area2D

export var speed = 400  # How fast the player will move (pixels/sec).
var screen_size  # Size of the game window.

func _ready():
    screen_size = get_viewport_rect().size
    # retorna o tamanho da tela	

func _process(delta):
    var velocity = Vector2()  # The player's movement vector.

    if Input.is_action_pressed("ui_right"):
        velocity.x += 1

    if Input.is_action_pressed("ui_left"):
        velocity.x -= 1

    if Input.is_action_pressed("ui_down"):
        velocity.y += 1

    if Input.is_action_pressed("ui_up"):
        velocity.y -= 1

    if velocity.length() > 0:
        
	velocity = velocity.normalized() * speed  
	# Normaliza para que a velocidade diagonal não seja maior que unidirecional.
        
	$AnimatedSprite.play()

    else:
        $AnimatedSprite.stop()

   position += velocity * delta
   position.x = clamp(position.x, 0, screen_size.x)
   position.y = clamp(position.y, 0, screen_size.y)

   # clamp() limita a tela. Não deixa o player escapar da tela
