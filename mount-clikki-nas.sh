#!/usr/bin/sh
#
# mount-clikki.sh
#
# Mounts server SMB share of server CLIKKI to /mnt/clikki-SMB
# Must be run as superuser
mount -t cifs //clikki-nas/Videos /mnt/clikki-SMB/videos -o user=clive,password=dickbum69,uid=1000,gid=1000
mount -t cifs //clikki-nas/Music /mnt/clikki-SMB/music/ -o user=clive,password=dickbum69,uid=1000,gid=1000
mount -t cifs //clikki-nas/Pictures /mnt/clikki-SMB/pictures/ -o user=clive,password=dickbum69,uid=1000,gid=1000
mount -t cifs //clikki-nas/clive /mnt/clikki-SMB/clive/ -o user=clive,password=dickbum69,uid=1000,gid=1000
mount -t cifs //clikki-nas/Software /mnt/clikki-SMB/software/ -o user=clive,password=dickbum69,uid=1000,gid=1000


