#!/bin/bash
sudo dpkg -i ./EasyConnect_x64.deb
sudo cp EasyConnect_pango.tar.gz /usr/share/sangfor/EasyConnect/
cd /usr/share/sangfor/EasyConnect/ && sudo tar xf EasyConnect_pango.tar.gz && sudo rm -f EasyConnect_pango.tar.gz

