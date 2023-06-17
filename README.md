# HomeWork1.3

Первая часть
Changed branch on hw1.3
Add Dockerfile and folder init, file init.sql
Changed Dockerfile
Создан образ командой
docker build -t homework1.3:1.3 .
Создан контейнер командой
docker run -d -p 5432:5432 --name homework1.3_container homework1.3:1.3
Проверил появилась ли таблица в DBeaver
Вторая часть
Подключился к работающему контейнеру
docker exec -it homework1.3_container bash
psql -U 1tstudent -d initbasa
Посмотрел какие есть базы
\l
Подключился к базе
\c initbasa
Посмотрел пользователей командой
\du
Что еще можно сделать не знаю
Выход из базы
