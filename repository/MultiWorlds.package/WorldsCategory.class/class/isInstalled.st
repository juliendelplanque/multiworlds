installation
isInstalled
	^ KMRepository default globalCategories anySatisfy: [ :cat | cat class = self ]