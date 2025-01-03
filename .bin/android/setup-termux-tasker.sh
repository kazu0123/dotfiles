mkdir -p /data/data/com.termux/files/home/.termux/tasker
chmod 700 -R /data/data/com.termux/files/home/.termux
echo -e 'cp "/sdcard/Tasker/$1" "/data/data/com.termux/files/home/$1"\nchmod +x "/data/data/com.termux/files/home/$1"\n"/data/data/com.termux/files/home/$1"'>/data/data/com.termux/files/home/.termux/tasker/tasker.sh
