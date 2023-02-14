#!/bin/sh

pkill firefox
rm -rf $HOME/.mozilla/firefox/*.default-release/*
cp firefox/* $HOME/.mozilla/firefox/*.default-release
echo "Done, you can open Firefox now!"