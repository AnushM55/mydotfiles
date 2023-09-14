#!/usr/bin/env bash

read -p "Enter version : " ver
arch=$( lscpu | grep Architecture: | awk '{print $2}' )
wget https://github.com/Floorp-Projects/Floorp/releases/download/v$ver/floorp-$ver.linux-$arch.tar.bz2


tar -xf floorp-$ver.linux-$arch.tar.bz2
sudo mv floorp /usr/lib/
touch ~/Desktop/floorp.desktop

echo -e "[Desktop Entry]\nVersion=1.0\nName=Floorp\nGenericName=Web Browser\nComment=Browse the Web\nExec=/usr/lib/floorp/floorp --class="floorp" %u\nIcon=/usr/lib/floorp/browser/chrome/icons/default/default128.png
\nTerminal=false\nType=Application\nMimeType=text/html;text/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;text/mml;x-scheme-handler/http;x-scheme-handler/https;\nCategories=Network;WebBrowser;\nKeywords=web;browser;internet;\nActions=new-window;new-private-window;profile-manager-window;\n\n[Desktop Action new-window]\nName=Open a New Window\nExec=/usr/lib/floorp/floorp --class="floorp" --new-window %u\n\n[Desktop Action new-private-window]\nName=Open a New Private Window\nExec=/usr/lib/floorp/floorp --class="floorp" --private-window %u\n\n[Desktop Action profile-manager-window]\nName=Open the Profile Manager\nExec=/usr/lib/floorp/floorp --class="floorp" --ProfileManager %u\n" >> ~/Desktop/floorp.desktop

sudo cp ~/Desktop/floorp.desktop /usr/share/applications/

[ ! -z /usr/lib/floorp/floorp ] && chmod +x /usr/lib/floorp/floorp

rm floorp-11.3.3.linux-x86_64.tar.bz2
rm -r floorp
