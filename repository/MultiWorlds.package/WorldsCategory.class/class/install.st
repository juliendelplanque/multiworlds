installation
install
	"Install if shortcuts if not already done, else do nothing."
	self isInstalled ifFalse: [ KMRepository default setAsGlobalCategory: self new ]