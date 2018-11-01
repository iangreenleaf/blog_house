build:
	bundle exec jekyll build

test:
	X := $(echo 3)
	echo HEY THERE $(X)

publish: build
	git add -f _site
	TREE_OBJ := $(git write-tree --prefix=_site)
	git reset -- _site
