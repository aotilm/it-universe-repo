# створення на базі образу ubuntu
FROM ubuntu

# виконання оновлення та встановлення apache при створенні образу 
RUN apt update && apt install apache2 -y

# копіювання в контейнер сайту та скрипту
COPY index.html /var/www/html/index.html
COPY script.sh /script.sh

# надання дозволу на виконання скрипту
RUN chmod +x /script.sh

# оголошення дефолтного значення змінної
ENV DEVOPS=Default_person

# вказуємо що контейнер буде слухати 80 порт
EXPOSE 80

# вказуємо скрипт який буде виконуватись при запуску контейнера
# важливо аби це було саме при запуску, щоб змінна DEVOPS динамічно оновлювалась на сторінці
ENTRYPOINT ["/script.sh"] 
