instance creation
previousWorld: aWorld newWorld: anotherWorld
	^ self new
		previousWorld: aWorld;
		newWorld: anotherWorld;
		yourself