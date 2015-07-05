# создать файл
touch file
# Пример команды для дампа rtmp
rtmpdump -r "rtmp://163.1.201.45/rtplive/" -a "rtplive/" -f "WIN 10,2,152,32" --live -y "1.amp" -o media.flv
# Получить ip адрес
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
# добавить пользователя в группу
sudo adduser username group-name
# создать файл произвольного размера
dd if=/dev/zero of=file.name bs=1024M count=1
# текстовый поиск
grep -rnw /target/catalog -e search_pattern
 
dpkg-reconfigure tzdata # Changing the timezone of your Debian system
date --set 2013-11-11 # set date
date --set 21:01:15 # set time
sudo netstat -tap | grep mysql # see active connection
 
#-------------------------------------------------SSH--------------------------------------------------------------
 
# скопировать файл по ssh
scp name@host:~/dump.sql /home/name/
scp path/myfile user@8.8.8.8:/full/path/to/new/location/ 
 
# add public key
cat ~/.ssh/id_rsa.pub | ssh user@hostname 'cat >> .ssh/authorized_keys'
