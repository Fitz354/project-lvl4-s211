install-deps:
	npm install

install: install-deps install-flow-typed

start:
	npm run nodemon -- --exec npm run babel-node -- server/bin/slack.js

build:
	rm -rf dist
	npm run build

test:
	npm test

check-types:
	npm run flow

lint:
	npm run eslint

publish:
	npm publish

.PHONY: test