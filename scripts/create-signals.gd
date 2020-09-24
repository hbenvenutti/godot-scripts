extends node

# Criar o sinal:

signal = my_signal


# Emitir o sinal:
func _ready():
    emit_signal("my_signal")
