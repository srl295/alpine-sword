FROM alpine:3.18.3
RUN apk add --no-cache subversion  pkgconfig zlib libtool m4 automake autoconf make gcc g++ zlib-dev
WORKDIR /src
RUN svn co http://crosswire.org/svn/sword/trunk sword
RUN cd sword && ./autogen.sh && ./usrinst.sh --enable-static --disable-shared --prefix=/opt/local/sword && make && make install && make install_config
