extends Button
@onready var inventory: Button = $"."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	inventory.icon = ResourceLoader.load("res://assets/Complete_UI_Essential_Pack_v2.3.2/01_Flat_Theme/Sprites/UI_Flat_Banner04a.png")


func _on_mouse_exited() -> void:
	inventory.icon = ResourceLoader.load("res://assets/Complete_UI_Essential_Pack_v2.3.2/03_Wood_Theme/Sprites/UI_Wood_Cross_Large.png")
