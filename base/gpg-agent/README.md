# GPG Agent

A simple image that provides gpg support.
The image is meant to be used for connecting to the gpg agent of the host.

## Host configuration

In order to connect to an existing gpg agnet the agent needs provide a raw socket that can be mounted inside the container.

### /home/<user>/gpg-agent.conf

      pinentry-program /usr/bin/pinentry-curses
      extra-socket /home/iocanel/.gnupg/S.gpg-agent
