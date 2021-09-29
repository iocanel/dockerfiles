IMAGE := gosu

REPOSITORY ?= iocanel
VERSION ?= latest
USERNAME ?= iocanel
build: 
	echo "Pulling latest archlinux image..."
	docker pull archlinux:latest
	echo "Building ${IMAGE}:${VERSION}"
	docker build --build-arg username=${USERNAME} -f Dockerfile -t ${REPOSITORY}/${IMAGE}:${VERSION} .
