#!/bin/sh
# Synopsis
# -----------------------------------------------------------------------------
# Download all OpenBSD release songs as of 2020-08-09 to ~/Music/OpenBSD
#
# I did not find a way to do this with a one liner. If you know of a idiomatic way to do this please enlighten me. I tried using FTP(1) to no avail. It should in theory be pretty simple considering it is all in one flat directory though.
#

mkdir -p ~/Music/OpenBSD
cd ~/Music/OpenBSD

i=30
while [ $i -le 57 ]; do                                     # 30 -> 57
	ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song$i.ogg
	i=$((i + 1))
done
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song38b.ogg # 38 b -> b
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song58a.ogg # 58 a -> d
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song58b.ogg
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song58c.ogg
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song58d.ogg
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song59a.ogg # 59 a -> b
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song59b.ogg
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song60a.ogg # 60 a -> g
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song60b.ogg
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song60c.ogg
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song60d.ogg
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song60e.ogg
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song60f.ogg
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song60g.ogg
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song61.ogg  # 61
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/song62.ogg  # 62
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/songsh.ogg  # sh
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/songsi.ogg  # si
ftp https://ftp.openbsd.org/pub/OpenBSD/songs/songty.ogg  # ty
