BIN_PATH:=node_modules/.bin/

all:	angular-digicore-wallet-client.min.js

clean:
	rm -f angular-digicore-wallet-client.js
	rm -f angular-digicore-wallet-client.min.js

angular-digicore-wallet-client.js: index.js
	${BIN_PATH}browserify $< > $@

angular-digicore-wallet-client.min.js: angular-digicore-wallet-client.js
	${BIN_PATH}uglify  -s $<  -o $@
