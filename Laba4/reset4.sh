#!/bin/sh
# Сценарий очистки для
# Задание 4.2
# прекращаем все процессы из Задания 4.1

for p in `pgrep -f ping $1`
do
kill $p
done
for p in `pgrep -f ping $2`
do
kill $p
done

