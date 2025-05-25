# Завдання 3 

## Створи 2 інстанси EC2 типу t2.micro:
* [Один з Ubuntu](ubuntu_instance.tf)
* [Один з CentOS](centos_instance.tf)
* Обидва інстанси мають мати теги з іменами (наприклад, Name = "Ubuntu" і Name = "CentOS")
## Налаштуй мережевий доступ:
* Повинен мати доступ до інтернету
* Повинен приймати вхідні з'єднання: ICMP, TCP/22, TCP/80, TCP/443
* Повинен мати дозволений весь вихідний трафік
* Без доступу до інтернету
* Дозволено лише локальні з'єднання в межах підмережі/інфраструктури (де розміщені обидва EC2) по ICMP, TCP/22, TCP/80, TCP/443
* Ubuntu EC2:
* CentOS EC2:

***
* [Налаштування мережі для Ubuntu](ubuntu_network_setup.tf)
* [Налаштування мережі для CentOS](centos_network_setup.tf)
---


## На Ubuntu EC2:
* Встанови веб-сервер (nginx або apache)
* Створи веб-сторінку з текстом “Hello World” та інформацією про версію ОС
* Сторінка має бути доступна з Інтернету (перевір через браузер)
***
* [http://16.171.159.118/](http://16.171.159.118/)
* [Скрипт](apache_autoinstall.sh) встановлення Apache через user_data
---
## На Ubuntu EC2:
* Встанови Docker за офіційною інструкцією з docker.com
***
* [Скрипт](ubuntu_docker_install.sh) встановлення Docker через user_data
---

### Інші файли
* [main.tf - створення vpc та інтернет шлюзу](main.tf)
* [variables.tf - інформація в змінних для більш зручного використання](variables.tf)
* [outputs.tf - вивід ip адрес після створення інфраструктури](outputs.tf)
* [terraform_plan - зміни які вносяться при початковому створенні інфраструктури](terraform_plan)
* [Ubuntu cloud init log](ubuntu-cloud_init_outputs)