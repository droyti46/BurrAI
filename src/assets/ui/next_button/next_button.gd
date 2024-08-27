extends Button

@export var button_text: String

# При старте
func _ready():
	# Задаем текст кнопке
	%ButtonText.set_text(button_text)
	# Задаем pivot offset, ориентируясь на размер кнопки
	%ButtonTexture.pivot_offset = size / 2

# При нажатии
func _on_pressed():
	# Играем анимацию нажатия
	$ButtonAnim.play('click')
