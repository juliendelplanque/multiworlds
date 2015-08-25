worlds management
cleanUselessWorlds
	(worlds size = worldIndex) ifTrue: [ ^self ].
	
	((worldIndex +1) to: worlds size) reverse do: [ :i |
		(self isWorldUsed: (worlds at: i))
			ifFalse: [ worlds removeAt: i ] ]