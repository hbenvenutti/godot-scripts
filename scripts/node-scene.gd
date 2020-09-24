# Criando nós:
#
var s
func _ready():
    s = Sprite.new() # Create a new sprite!
    add_child(s) # Add it as a child of this node.
    
# Deletando nós:
#

func _someaction():
    s.free() # Immediately removes the node from the scene and frees it.
 
func _someaction():
    s.queue_free() # Removes the node from the scene and frees it when it becomes safe to do so.

# Instaciando cenas:
#
# Primeiro é preciso carregar a cena;

var scene = load("res://myscene.tscn") # Will load when the script is instanced.
 
var scene = preload("res://myscene.tscn") # Will load when parsing the script.
 
# Então pode-se instanciá-la:

var node = scene.instance()
add_child(node)

