extends Node2D


# all the tiles in the game
var allTiles : Array
# all the tiles which have buildings on them
var tilesWithBuildings : Array
# size of a tile
var tileSize : float = 64.0



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# returns a tile at the given position - returns null if no tile is found
func get_tile_at_position (position):
	# loop through all of the tiles
	for x in range(allTiles.size()):
		# if the tile matches our given position, return it
		if allTiles[x].position == position and allTiles[x].hasBuilding == false:
			return allTiles[x]
	return null

# disables all of the tile highlights
func disable_tile_highlights ():
	for x in range(allTiles.size()):
		allTiles[x].toggle_highlight(false)
