#!/bin/sh
# SYNOPSIS
#-------------------------------------------------------------------------------
# Play all OpenBSD release songs
#
# See ./songs.sh
find ~/Music/OpenBSD/ -name "*.ogg" -exec ffplay -nodisp -autoexit {} \;
