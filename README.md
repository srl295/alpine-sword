# alpine-sword

## What is this?

Just a Docker builder for [SWORD](https://wiki.crosswire.org/DevTools:SWORD) in Alpine linux.

Builds a statically linked copy of libsword into `/opt/local/sword`.

## Usage

- run as a one-off container:

`docker run srl295/alpine-sword:latest /opt/local/sword/bin/diatheke`

- export the whole thing, perhaps to another container

`docker run srl295/alpine-sword:latest tar cvfpz - /opt/local/sword > ~/Downloads/alpine-sword.tar.gz`

- like `zombo.com`, the possibilities are endless!

## Author

Steven R. Loomis

## LICENSE

Apache-2.0, see [LICENSE](./LICENSE)
