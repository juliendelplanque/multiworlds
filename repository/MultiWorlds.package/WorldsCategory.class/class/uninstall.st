installation
uninstall
	"Uninstall if shortcuts if installed, else do nothing."
	self isInstalled ifTrue: [
		KMRepository default globalCategories remove: (KMRepository default globalCategories select: [ :cat | cat class = self ]) first ]