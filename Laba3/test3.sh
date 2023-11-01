#!/bin/sh
# сценарий проверки прав пользователей
# Задание 3.2

# USER2
su -l $4 -c'
cd /srv/dir1
touch file_u2d1
whoami && echo "создал(а) файл в каталоге" && pwd
cd /srv/dir2
touch file_u2d2
echo "`whoami` создал(а) файл в каталоге `pwd`" '

# USER1
su -l $3 -c'

# user1 - доступ к файлам в dir1
cd /srv/dir1/
whoami && echo "доступ к файлу в каталоге" && pwd
cp file_u2d1 file_u1d1
echo $?

# user1 - доступ к файлам в dir2
cd /srv/dir2/
echo "`whoami` создал(а) файл в каталоге `pwd`"
cp file_u2d2 file_u1d2
echo $?'

# USER3'
su -l $5 -c'
# user3 - доступ к файлам в dir1
cd /srv/dir1/
whoami && echo "доступ к файлу в каталоге" && pwd
cp file_u2d1 file_u3d1
echo $?
# user3 - доступ к файлам в dir2
cd /srv/dir2/
whoami && echo "доступ к файлу в каталоге" && pwd
cp file_u2d2 file_u3d2
echo $?'
exit 0
