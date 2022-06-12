mv /usr/share/applications/org.gnome.Extensions.desktop /usr/share/applications/org.gnome.Extensions.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/avahi-discover.desktop /usr/share/applications/avahi-discover.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/qv4l2.desktop /usr/share/applications/qv4l2.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/nm-connection-editor.desktop /usr/share/applications/nm-connection-editor.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/electron16.desktop /usr/share/applications/electron16.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/lstopo.desktop /usr/share/applications/lstopo.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/appimagelaunchersettings.desktop /usr/share/applications/appimagelaunchersettings.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/jshell-java-openjdk.desktop /usr/share/applications/jshell-java-openjdk.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/jconsole-java-openjdk.desktop /usr/share/applications/jconsole-java-openjdk.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/qvidcap.desktop /usr/share/applications/qvidcap.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/bssh.desktop /usr/share/applications/bssh.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/bvnc.desktop /usr/share/applications/bvnc.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/mpv.desktop /usr/share/applications/mpv.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/cups.desktop /usr/share/applications/cups.desktop.bak  1> /dev/null 2> /dev/null
mv /usr/share/applications/qdbusviewer.desktop /usr/share/applications/qdbusviewer.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/assistant.desktop /usr/share/applications/assistant.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/designer.desktop /usr/share/applications/designer.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/linguist.desktop /usr/share/applications/linguist.desktop.bak 1> /dev/null 2> /dev/null
mv /usr/share/applications/cmake-gui.desktop /usr/share/applications/cmake-gui.desktop.bak 1> /dev/null 2> /dev/null

cp /usr/share/applications/firefox.desktop.bak /usr/share/applications/firefox.desktop 1> /dev/null 2> /dev/null

sudo update-desktop-database 1> /dev/null 2> /dev/null
