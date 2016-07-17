all: index.js

index.js: src/*.purs
	pulp browserify -t $@
