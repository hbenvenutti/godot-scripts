# Script do nó de tipo Panel

extends Panel

func _ready():
    get_node("Button").connect("pressed", self, "_on_Button_pressed")

    #pega o nó 'Button' e conecta o sinal 'pressed' à função '_on_Button_pressed'


func _on_Button_pressed():
    get_node("Label").text = "HELLO!"

# Not for this case,
# but just in case.
# Como pegar um nó filho:
get_node("Label/Button")

# Outro exemplo:
#
extends Node

func _ready():
    $Timer.connect("timeout", self, "_on_Timer_timeout")

func _on_Timer_timeout():
    # Note: the `$` operator is a shorthand for `get_node()`,
    # so `$Sprite` is equivalent to `get_node("Sprite")`.
    $Sprite.visible = !$Sprite.visible
