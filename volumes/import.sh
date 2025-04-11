#!/usr/bin/env bash

docker run \
  --rm \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ \
  -v ./volumes/beets/ingest:/downloads \
  -v ./volumes/import.sh:/import.sh \
  -v /mnt/nas-music-flac:/music \
  lscr.io/linuxserver/beets:latest bash /import.sh
