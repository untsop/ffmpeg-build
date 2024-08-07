#!/usr/bin/env bash

FFMPEG_VERSION=7.0
FFMPEG_TARBALL=ffmpeg-$FFMPEG_VERSION.tar.gz
FFMPEG_TARBALL_URL=http://ffmpeg.org/releases/$FFMPEG_TARBALL

FFMPEG_CONFIGURE_FLAGS=(
    --disable-shared
    --enable-static
    --enable-pic

    --disable-doc
    --disable-debug
    --disable-avdevice
    --disable-swscale
    --disable-programs
    --enable-ffmpeg
    --disable-network
    --disable-zlib
    --disable-lzma
    --disable-bzlib
    --disable-iconv
    --disable-libxcb
    --disable-bsfs
    --disable-parsers
    --disable-indevs
    --disable-outdevs
    --disable-hwaccels
    --disable-nvenc
    --disable-videotoolbox
    --disable-audiotoolbox

    # Enable only required demuxers
    --enable-demuxer=wav

    # Enable only required muxers
    --enable-muxer=ipod

    # Enable only required encoders and decoders
    --enable-encoder=aac
    --enable-decoder=pcm_s16le
    --enable-decoder=pcm_s24le

    # Enable necessary filters
    --enable-filter=aresample

    # Enable necessary protocols
    --disable-protocols
    --enable-protocol=file
    --enable-protocol=pipe
)
