extends KinematicBody2D

var velocity = Vector2(0,0) # This vector is determening where my floor is facing
const SPEED = 180 # This constant determines how fast the sprite moves
const JUMPFORCE = -900
const GRAVITY = 40 # controls th speed of descent 

# warning-ignore:unused_argument
func _physics_process(delta):
	
	velocity.y = velocity.y + GRAVITY # this is the y axis and controls up and down (increseses momentum of fall)
	
	velocity = move_and_slide(velocity,Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,0.2)
