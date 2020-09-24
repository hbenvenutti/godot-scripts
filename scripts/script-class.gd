# Registre scripts como classes

# Godot tem uma função “Classe Script” para registrar scripts individuais com o editor. 
# Por padrão, você só pode acessar scripts sem nome ao carregar o arquivo diretamente.

# Você pode nomear um script e o registrar como um tipo no editor com a palavra chave class_name seguido pelo nome da classe. 
# Você pode adicionar uma vírgula e um caminho opcional a uma imagem para usar como ícone. 
# Então, você encontrará seu novo tipo na janela de criação de Nodes e recursos.

# Exemplo:
extends Node

# Declare the class name here
class_name ScriptName, "res://path/to/optional/icon.svg"

func _ready():
    var this = ScriptName           # reference to the script
    var cppNode = MyCppNode.new()   # new instance of a class named MyCppNode

    cppNode.queue_free()

