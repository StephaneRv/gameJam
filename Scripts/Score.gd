extends Label


func _ready():
	self.text = "score: " + str(GlobalVar.score)
