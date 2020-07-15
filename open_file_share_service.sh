#!/bin/bash
#---------------------------
##this shell is used to open http file system to share file between two computer which are my PC and mac mini.
## 
##
#---------------------------
config_hfs_dir=/home/wei/hfs
hfs_app_path="${config_hfs_dir}/chfs"
hfs_share_dir_path="${config_hfs_dir}/file"

#If the poeple who logined user is not root,I need a sudo command into ahead.
SUDO=''
if (( $EUID != 0 )); then
    SUDO='sudo'
fi


check_port() {
        echo "port checking"
        netstat -tlpn | grep "\b$1\b"
}
if check_port 80
then
        echo -e "That http file system is running."
        echo -e "Now I'm going to exist....."
    exit 1
else
        echo "That http file system is not running."
		nohup $SUDO $hfs_app_path --port 80  --path=$hfs_share_dir_path & ##Starting http file system.
fi