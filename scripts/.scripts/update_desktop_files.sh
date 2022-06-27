sudo mv /usr/share/applications/avahi-discover.desktop /usr/share/applications/avahi-discover.desktop.bak
sudo mv /usr/share/applications/qv4l2.desktop /usr/share/applications/qv4l2.desktop.bak
sudo mv /usr/share/applications/nm-connection-editor.desktop /usr/share/applications/nm-connection-editor.desktop.bak
sudo mv /usr/share/applications/qvidcap.desktop /usr/share/applications/qvidcap.desktop.bak
sudo mv /usr/share/applications/bssh.desktop /usr/share/applications/bssh.desktop.bak
sudo mv /usr/share/applications/bvnc.desktop /usr/share/applications/bvnc.desktop.bak
sudo mv /usr/share/applications/cups.desktop /usr/share/applications/cups.desktop.bak 
sudo mv /usr/share/applications/qdbusviewer.desktop /usr/share/applications/qdbusviewer.desktop.bak
sudo mv /usr/share/applications/assistant.desktop /usr/share/applications/assistant.desktop.bak
sudo mv /usr/share/applications/designer.desktop /usr/share/applications/designer.desktop.bak
sudo mv /usr/share/applications/linguist.desktop /usr/share/applications/linguist.desktop.bak

sudo cp /home/matheus/.dotfiles/desktop-files/firefox.desktop /usr/share/applications/firefox.desktop

sudo update-desktop-database
