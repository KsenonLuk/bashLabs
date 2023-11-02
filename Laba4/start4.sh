#!/bin/sh
# сценарий запуска фоновых процессов
# Задание 4.2
# ($1)ya.ru ($2)yandex.ru

# запускаем 3 целевых процесса
if [[ $# -ne 2 ]]; then
echo 'nevernoe col-vo parametrov'

fi
#  запускаем 3 целевых сценари
for i in `seq 1 3`; do ping $1 >/dev/null & done

# запускаем 2 дополнительных процесса
for i in 1 2; do ping $2 >/dev/null & done


