worlds management
nextWorld
	| previousWorld |
	self isCurrentWorldUsed ifFalse: [ ^self ].
	
	self hasNextWorld
		ifFalse: [
			self createNewWorld ].
	previousWorld := (worlds at: worldIndex).
	worldIndex := worldIndex + 1.
	(worlds at: worldIndex) install.
	Display restore.
	self cleanUselessWorlds.
	self announcer announce: (WorldChanged previousWorld: previousWorld newWorld: (worlds at: worldIndex) )