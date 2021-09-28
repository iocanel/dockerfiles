# Desktop dockerfiles

This repository contains docker images, and usage scripts for desktop application that I am using.
All images are using archlinux as a base and are running as a non-root user, that can be specified at build time.

## Vision / Motivation

The motivation for this project could be expressed, with the following user stories: 

- As a user who often switches machines, I need to have a working machine just with docker + a cloud settings repository (no further installation/administration).
- As a rolling distribution user, I need to have a safety net for my most commonly used applications.
- As a user, I want to share my apps settings, using something that sucks less, than dotfile repos, gists etc.

## Structure
The overall structure of this repository is similar to the tree below:

	dockerfiles
	|
	+-- scripts 
	|   |
	|   +-- readopt
 	|   |
	|   +-- filteropts
	|
	+-- base 
	|    |
	|    +-- gpg-agent
	|    |
	|    +-- pass
	|    |
	|    +-- python
	|   
	|
	+-- mail 
	    |
	    +-- offlineimap
	    |
	    +-- notmuch

Images are grouped into categories (e.g. mailapps).
Each image contains a `run` script that actually runs the app and a `shell` script that opens a shell into the app container.
Last but not least each image contains a Makefile which allows you to easily build each image.

### Building an image

To build an image, you can enter the app directory and run make:

    make build

### Run the application

From within the app directory:

   ./run <arguments>

If the applicaiton is using volume mounts with paths specific to the user (under which the application will run), you will need to specify the user too:

   ./run -user <username> <arguments>

Also, if you need to run a version other than the latest you will need to pass it to the run script:

   ./run -version <my version> <arguments>

Note: If not obvious the `-user` and the `-version` opts will not be passed to the actual application. This is taken care inside the run script itself.
Internally the run script is using shell scripts wrap within dokcer container to perform the opt handling. As an alternative you can just install the scripts locally and use them instead.
To do that from the root folder:

	make helpers_install

## Installing

To build all images at once, from the root directory:

   make all -B

This will build all images in the repository using the `latest`. To specify a custom tag:

   make all VERSION=1.0 -B

Note, that the command above will also update the tag in FROM directives that currentl use the `latest`.   

## References and Credits
Lot of the images in this repo have borrowed chunks or ideas from similar images found online:

- https://denibertovic.com/posts/handling-permissions-with-docker-volumes/
- https://github.com/markhuge/dockerfiles

