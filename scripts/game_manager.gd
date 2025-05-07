extends Node

var score = 0

@onready var score_label: Label = $ScoreLabel

func add_point():
	score+=1
	score_label.text= "Felicitari! Ai colectat " + str(score) + " /10 monede pierdute."
	print(score)
