extends Area2D

var son

func _ready():
	self.connect("area_entered", self, "open_textbox")
	self.connect("area_exited", self, "close_textbox")
	
	son = get_node("messagebox/Label")

###
# open_textbox
func open_textbox(area):
	son.emit_signal("appear")
	
###
# close_textbox
func close_textbox(area):
	son.emit_signal("disappear")