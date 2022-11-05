#!/bin/bash
sudo ufw enable
qbittorrent --save-path=$HOME/torrents/JPS --category="JPS"
nicotine --enable-trayicon
sudo tailscale up
sudo systemctl start lighttpd; pihole -up && pihole -g
export ND_PLAYLISTSPATH=$HOME/Music/.playlists && sudo systemctl start navidrome
# sudo -H -u searx -i && python /usr/local/searx/searx-src/searx/webapp.py
redis-server; cd $HOME/teddit/; npm start

