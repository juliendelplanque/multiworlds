worlds management
previousWorld
	| previousWorld |
	self hasPreviousWorld
		ifFalse: [ ^self ].
	
	previousWorld := (worlds at: worldIndex). "This is the previous world for the announcement, not the one that will be set."
	worldIndex := worldIndex - 1.
	(worlds at: worldIndex) install.
	Display restore.
	self cleanUselessWorlds.
	self announcer announce: (WorldChanged previousWorld: previousWorld newWorld: (worlds at: worldIndex) )