sudo mv /usr/share/applications/avahi-discover.desktop /usr/share/applications/avahi-discover.desktop.bak &>/dev/null
sudo mv /usr/share/applications/qv4l2.desktop /usr/share/applications/qv4l2.desktop.bak &>/dev/null
sudo mv /usr/share/applications/nm-connection-editor.desktop /usr/share/applications/nm-connection-editor.desktop.bak &>/dev/null
sudo mv /usr/share/applications/qvidcap.desktop /usr/share/applications/qvidcap.desktop.bak &>/dev/null
sudo mv /usr/share/applications/bssh.desktop /usr/share/applications/bssh.desktop.bak &>/dev/null
sudo mv /usr/share/applications/bvnc.desktop /usr/share/applications/bvnc.desktop.bak &>/dev/null
sudo mv /usr/share/applications/cups.desktop /usr/share/applications/cups.desktop.bak &>/dev/null
sudo mv /usr/share/applications/qdbusviewer.desktop /usr/share/applications/qdbusviewer.desktop.bak &>/dev/null
sudo mv /usr/share/applications/assistant.desktop /usr/share/applications/assistant.desktop.bak &>/dev/null
sudo mv /usr/share/applications/designer.desktop /usr/share/applications/designer.desktop.bak &>/dev/null
sudo mv /usr/share/applications/linguist.desktop /usr/share/applications/linguist.desktop.bak &>/dev/null
sudo mv /usr/share/applications/org.kde.kmenuedit.desktop /usr/share/applications/org.kde.kmenuedit.desktop.bak &>/dev/null
sudo mv /usr/share/applications/org.kde.kuserfeedback-console.desktop /usr/share/applications/org.kde.kuserfeedback-console.desktop.bak &>/dev/null
sudo mv /usr/share/applications/org.kde.drkonqi.coredump.gui.desktop /usr/share/applications/org.kde.drkonqi.coredump.gui.desktop.bak &>/dev/null
sudo mv /usr/share/applications/lstopo.desktop /usr/share/applications/lstopo.desktop.bak &>/dev/null
sudo mv /usr/share/applications/mpv.desktop /usr/share/applications/mpv.desktop.bak &>/dev/null
sudo mv /usr/share/applications/appimagelauncher.desktop /usr/share/applications/appimagelauncher.desktop.bak &>/dev/null
sudo mv /usr/share/applications/appimagelaunchersettings.desktop /usr/share/applications/appimagelaunchersettings.desktop.bak &>/dev/null
sudo mv /usr/share/applications/cmake-gui.desktop /usr/share/applications/cmake-gui.desktop.bak &>/dev/null
sudo mv /usr/share/applications/electron16.desktop /usr/share/applications/electron16.desktop.bak &>/dev/null
sudo mv /usr/share/applications/electron17.desktop /usr/share/applications/electron17.desktop.bak &>/dev/null
sudo mv /usr/share/applications/org.freedesktop.IBus.Setup.desktop /usr/share/applications/org.freedesktop.IBus.Setup.desktop.bak &>/dev/null
sudo mv /usr/share/applications/jconsole-java-openjdk.desktop /usr/share/applications/jconsole-java-openjdk.desktop.bak &>/dev/null
sudo mv /usr/share/applications/jshell-java-openjdk.desktop /usr/share/applications/jshell-java-openjdk.desktop.bak &>/dev/null
sudo mv /usr/share/applications/firewall-config.desktop /usr/share/applications/firewall-config.desktop.bak &>/dev/null
sudo mv /usr/share/applications/cmake-gui.desktop /usr/share/applications/cmake-gui.desktop.bak &>/dev/null

sudo cp /usr/share/applications/firefox.desktop.bak /usr/share/applications/firefox.desktop &>/dev/null
sudo cp /usr/share/applications/Alacritty.desktop.bak /usr/share/applications/Alacritty.desktop &>/dev/null
sudo cp /usr/share/applications/kitty.desktop.bak /usr/share/applications/kitty.desktop &>/dev/null

sudo update-desktop-database
