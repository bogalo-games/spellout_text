extends Label

signal appear
signal disappear

export var fill_time = 0.25

var target_text = ""
var current_index = 0
var since = 0
var done = true

var dad

func _ready():
	self.connect("appear", self, "appear")
	self.connect("disappear", self, "disappear")
	target_text = self.text
	
	dad = get_parent()
	
func appear():
	self.text = ""
	current_index = 0
	done = false
	since = 0
	dad.visible = true
	self.visible = true

func disappear():
	dad.visible = false
	self.visible = false
	
func _process(delta):
	if not done:
		since += delta
		while since > fill_time:
			if current_index >= len(target_text):
				done = true
				break
			self.text += target_text[current_index]
			current_index += 1
			since -= fill_time
