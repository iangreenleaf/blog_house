build:
	bundle exec jekyll build

publish: build
	./bin/push-to-gh-pages
