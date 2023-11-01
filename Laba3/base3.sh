#!/bin/bash
#$1 $2 $3 $4 $5

if [[$# -eq5]]; then
	echo 'колтчество параметров не соответствует. Ожидается 5 параметров,\n bash3.sh [options = 5] \n example bash3.sh group1 group2 user1 user2 user 3 \n'
fi
groupadd $1 $2
adduser $3 $4 $5
gpasswd -a $3 $1
gpasswd -a $4 $1
grasswd -a $4 $2 
grasswd -a $5 $2
for i in $(seq 1 3)
do 
	echo 'polzovatel user$i'
	id user$i
done
mkdir /srv/dir1 /srv/dir2
chgrp group1 /srv/dir1
chgrp group2 /srv/dir2
chmod 2775 /srv/dir1 /srv/dir2
ls -la /srv
