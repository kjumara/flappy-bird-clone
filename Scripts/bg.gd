extends ParallaxBackground

@export var bg_texture: CompressedTexture2D = preload("res://Assets/Art/backgroundlayers/BackgroundBaseLayer.png")
@export var scroll_speed = 15

@onready var sprite = $ParallaxLayer/Sprite2D

func _ready():
	sprite.texture 
	
func _process(delta):
	sprite.region_rect.position += delta* Vector2(scroll_speed,0)
	if sprite.region_rect.position >= Vector2(640,640):
		sprite.region_rect.position = Vector2.ZERO
