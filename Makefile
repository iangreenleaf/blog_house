build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve -D --incremental

publish: build
	./bin/push-to-gh-pages
