#!/bin/sh

pkill firefox
rm -rf $HOME/.mozilla/firefox/*.default-release/*
cp firefox/* $HOME/.mozilla/firefox/*.default-release

ublock_version="1.46.0"
wget -O ublock_origin-$ublock_version.xpi https://addons.mozilla.org/firefox/downloads/file/4047353/ublock_origin-$ublock_version.xpi
nohup firefox ublock_origin-$ublock_version.xpi &
