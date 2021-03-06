#!/bin/sh

# Get instalation folder
DIR=$( cd $( dirname $BASH_SOURCE[0] ) && pwd )

PLISTS="com.googlecode.iterm2 ch.sudo.cyberduck com.apple.spotlight com.apple.controlstrip";

# Run scripts
for PLIST in $PLISTS; do
    defaults export $PLIST "$DIR/_backup/plists/$PLIST.plist"
    plutil -convert xml1 "$DIR/_backup/plists/$PLIST.plist"
done
