#!/bin/bash
sudo ufw enable
qbittorrent --save-path=/home/kiril/torrents/JPS --category="JPS"
nicotine --enable-trayicon
redis-server; cd /home/kiril/teddit/; npm start
sudo tailscale up
sudo systemctl start lighttpd; pihole -up && pihole -g
export ND_PLAYLISTSPATH=/home/kiril/Music/.playlists && sudo systemctl start navidrome
# sudo -H -u searx -i && python /usr/local/searx/searx-src/searx/webapp.py


