IMAGE := qutebrowser

REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

build: 

	echo "Building ${IMAGE}:${VERSION}"
	sed -E "s|(FROM [a-zA-Z0-9_\-\/\\-]*:)latest|\1${VERSION}|g" Dockerfile > Dockerfile.${VERSION}
	docker build -f Dockerfile.${VERSION} -t ${REPOSITORY}/${IMAGE}:${VERSION} .
	rm Dockerfile.${VERSION}

install:
	mkdir -p ${HOME}/bin
	mkdir -p ${HOME}/.local/share/applications/
	mkdir -p ${HOME}/.local/share/icons/hicolor/
	cp -r icons/hicolor/* ${HOME}/.local/share/icons/hicolor/
	mkdir -p ${HOME}/.sandbox/${SANDBOX_ID}
	cp sandbox ${HOME}/bin/docker-${IMAGE}-${SANDBOX_ID}
	sed -E "s|^SANDBOX_ID=.*|SANDBOX_ID=$$\{S:-\"${SANDBOX_ID}\"\}|g; s|^VERSION=.*|VERSION=$$\{V:-\"${VERSION}\"\}|g" sandbox > ${HOME}/bin/docker-${IMAGE}-${SANDBOX_ID}
	sed -E "s|\{\{sandbox_id\}\}|${SANDBOX_ID}|g; s|\{\{user\}\}|${USERNAME}|g;" application.desktop > ${HOME}/.local/share/applications/${IMAGE}-${SANDBOX_ID}.desktop
