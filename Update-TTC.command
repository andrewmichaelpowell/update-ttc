#!/bin/bash

# ++++++++++++++++++++++++++++++++++++
# +  Update-TTC                      +
# +  github.com/andrewmichaelpowell  +
# ++++++++++++++++++++++++++++++++++++

while true
do
  clear
  curl -o ~/Downloads/PriceTableEU.zip 'https://eu.tamrieltradecentre.com/download/PriceTable'
  curl -o ~/Downloads/PriceTableUS.zip 'https://us.tamrieltradecentre.com/download/PriceTable'
  unzip -o ~/Downloads/PriceTableEU.zip -d ~/Downloads/PriceTableEU
  unzip -o ~/Downloads/PriceTableUS.zip -d ~/Downloads/PriceTableUS
  rsync -a ~/Downloads/PriceTableEU/ ~/Documents/Elder\ Scrolls\ Online/live/AddOns/TamrielTradeCentre
  rsync -a ~/Downloads/PriceTableUS/ ~/Documents/Elder\ Scrolls\ Online/live/AddOns/TamrielTradeCentre
  rm -f ~/Downloads/PriceTableEU.zip
  rm -f ~/Downloads/PriceTableUS.zip
  rm -fr ~/Downloads/PriceTableEU
  rm -fr ~/Downloads/PriceTableUS
  sleep 3600
done