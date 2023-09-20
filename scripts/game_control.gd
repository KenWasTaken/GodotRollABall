extends CanvasLayer

@onready var score_val = $ScoreVal
@onready var you_win_panel = $YouWinPanel
@onready var timer = $Timer

var curr_score = 0;
var total_pickups_count = 0;
# Called when the node enters the scene tree for the first time.
func _ready():
	score_val.text = "0"
	total_pickups_count = get_tree().get_nodes_in_group("Pickup").size()
	#print(total_pickups_count)
	you_win_panel.visible = false
	pass # Replace with function body.

func add_score():
	curr_score = curr_score + 1
	#print("New Score Is " + str(curr_score))
	score_val.text = str(curr_score) 
	if curr_score >= total_pickups_count:
		#print("YOU WIN!")
		timer.start()
		you_win_panel.visible = true
	pass


func _on_timer_timeout():
	#print("RESTART LEVEL")
	get_tree().reload_current_scene()
	pass # Replace with function body.
