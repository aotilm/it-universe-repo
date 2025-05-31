#!/bin/bash 

# вставляєм в кінець файлу рядок з значенням DEVOPS
echo "<br> made by $DEVOPS" >> /var/www/html/index.html

# запуск Apache у першому плані, не як служба у фоні
# в інакшому випадку контейнер після запуску відразу зупиниться
apachectl -D FOREGROUND
