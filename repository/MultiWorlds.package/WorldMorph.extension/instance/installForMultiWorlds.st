*MultiWorlds
installForMultiWorlds
	"This method should be changed because it cannot be invoked from onPrimitiveError: as the previous PasteUpMorph 
	method was used to."
	
	owner := nil.
	
	Sensor
		flushNonKbdEvents;
		flushKeyboard;
		flushEvents;
		shutDown.
	self class shutDown.
 
	self addHand: HandMorph new.	
	self borderWidth: 0.
	self viewBox: Display boundingBox.
	self borderWidth: 0.	"default"
	self color: self class defaultWorldColor.
	self addMorph: TaskbarMorph new.
	SystemWindow noteTopWindowIn: self.
	World  := self.
	ActiveWorld := self.
	ActiveHand := self hands first.	"default"
	ActiveEvent := nil.
	worldState handsDo: [ :h | h releaseCachedState ].
	Sensor startUp.
	self class startUp.
	self displayWorldSafely.