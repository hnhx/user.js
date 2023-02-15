#!/bin/sh

pkill firefox
rm -rf $HOME/.mozilla/firefox/*.default-release/*
cp firefox/* $HOME/.mozilla/firefox/*.default-release

ublock_version="1.46.0"
wget -O uBlock0_$ublock_version.firefox.signed.xpi https://github.com/gorhill/uBlock/releases/download/$ublock_version/uBlock0_$ublock_version.firefox.signed.xpi
setsid -f firefox uBlock0_$ublock_version.firefox.signed.xpi