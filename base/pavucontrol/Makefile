IMAGE := pavucontrol

REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel

build: 
	echo "Building ${IMAGE}:${VERSION}"
	sed -E "s|(FROM [a-zA-Z0-9_\-\/\\-]*:)latest|\1${VERSION}|g" Dockerfile > Dockerfile.${VERSION}
	docker build -f Dockerfile.${VERSION} -t ${REPOSITORY}/${IMAGE}:${VERSION} .
	rm Dockerfile.${VERSION}

