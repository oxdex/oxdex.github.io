clean:
	rm -rf images locales static *.js *.json *.html *.png

publish:
	git add .
	git commit -am"update"
	git checkout --orphan tmp
	git add .
	git commit -am"auto publish"
	git branch -D main && git branch -M main
	git push -f -u origin main
