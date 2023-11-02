#!/bin/sh
# сценарий целевого прекращения процессов
# Задание 4.2

# выбираем и прекращаем процессы
for p in `pgrep -f $1`
do
kill $p
done
#if [[ $# -lt 2 ]]; then
#echo 'vvedite imea'
#read process_name
#pkill -f $1 $2
#pkill -f '$process_name'
#else
#pkill -f '$1' '$2'
#fi

