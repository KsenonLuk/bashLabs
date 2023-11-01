#!/bin/sh
# сценарий удаления файлов, групп и пользователей
# Задание 3.1

# удаление каталогов и файлов
	rm -rf /srv/dir1 /srv/dir2

# удаление групп и пользователей
userdel -r u1
userdel -r u2
userdel -r u3
groupdel g1
groupdel g2
