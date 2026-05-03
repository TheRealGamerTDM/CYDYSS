extends Control

var hearts = 4 setget set_hearts
var max_hearts = 4 setget set_max_hearts

onready var heartUIFull = $BossHealthFull
onready var heartUIEmpty = $BossHealthEmpty
onready var canSeePlayer = $PlayerDetectionZone



func set_hearts(value):
	hearts = clamp(value, 0, max_hearts)
	if heartUIFull != null:
		heartUIFull.rect_size.x = hearts * 15

func set_max_hearts(value):
	max_hearts = max(value, 1)
	self.hearts = min(hearts, max_hearts)
	if heartUIEmpty != null:
		heartUIEmpty.rect_size.x = max_hearts * 15

func _ready():
	self.max_hearts = BossStats.max_health
	self.hearts = BossStats.health
	BossStats.connect("health_changed", self, "set_hearts")
	BossStats.connect("max_health_changed", self, "set_max_hearts")



func _on_BossStats_health_changed(value):
	heartUIFull.rect_size.x = hearts * value
	
	if heartUIFull.rect_size.x <= 0:
		heartUIEmpty.rect_size.x = 0

