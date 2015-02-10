VERSION = 0.1.1
UGLIFYJS = ./node_modules/.bin/uglifyjs
MOCHA_PHANTOM = ./node_modules/.bin/mocha-phantomjs
HTTP_SERVER = ./node_modules/.bin/http-server
BANNER = "/*! domlight - v$(VERSION) - MIT License - https://github.com/h2non/domlight */"

default: all
all: test
browser: uglify
test: browser mocha

uglify:
	$(UGLIFYJS) domlight.js --mangle --preamble $(BANNER) --source-map domlight.min.js.map --source-map-url http://cdn.rawgit.com/zzarcon/focusable/$(VERSION)/domlight.min.js.map > domlight.min.js

mocha:
	#$(MOCHA_PHANTOM) --reporter spec --ui bdd test/runner.html

demo:	browser
	$(HTTP_SERVER) -p 8000 .

loc:
	wc -l domlight.js

gzip:
	gzip -c domlight.js | wc -c
