worlds management
createNewWorld
	| newWorld |
	newWorld := WorldMorph new.
	"These next two lines should be fixed but for now it works."
	newWorld installForMultiWorlds. "line 1 to be fixed"
	newWorld addMorph: pharoImage copy.
	(worlds at: worldIndex) install. "line 2 to be fixed"
	worlds add: newWorld.