LOCALE=locale/*/livehttpheaders
CONTENT=content
SKIN=skin

all:	clean jar xpi download

jar:
	zip livehttpheaders.jar \
        ${CONTENT}/contents.rdf \
        ${CONTENT}/headerinfo.js \
        ${CONTENT}/LiveHTTPHeaders.xul \
        ${CONTENT}/LiveHTTPReplay.xul \
        ${CONTENT}/LiveHTTPReplay.js \
        ${CONTENT}/TasksOverlay.xul \
        ${CONTENT}/PageInfoOverlay.xul \
        ${CONTENT}/PageInfoOverlay.js \
        ${LOCALE}/contents.rdf \
        ${LOCALE}/livehttpheaders.dtd \
        ${LOCALE}/livehttpheaders.properties \
        ${SKIN}/contents.rdf \
        ${SKIN}/livehttpheaders.css

xpi:
	zip livehttpheaders.xpi \
        livehttpheaders.jar \
        install.js \
        TODO.txt

download:
	cp livehttpheaders.xpi ../downloads
	cp livehttpheaders.xpi ../www

clean:
	rm livehttpheaders.xpi livehttpheaders.jar


