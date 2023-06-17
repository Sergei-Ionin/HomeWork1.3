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
Третья часть
Добавляем команду в Dockerfile
VOLUME и указываем место
Также можно использовать флаг -v при запуске контейнера
используем переменную ${PWD} либо указываем путь к локальной папке
Создаем контейнер
docker run -d -v ${PWD}:/backup_hw1.3 -p 5432:5432 --name homework1.3_container homework1.3:1.3
Получем три места куда сохраняется
image 1,2,3
можно использовать -o для сохранения образа
docker save -o homework1.3.tar homework1.3
для сохранения контейнера
его можно переделать в образ
docker commit -p 4a50ad164f2bb7f3a6d1a6351f84e8a23a75ca043b86b380f0f15e558118b573 cont_hw1.3:0.1.3
И сохранить
в коммит не буду добавлять .tar из за большого веса и прикладываю png 4
надеюсь хватит
сделан коммит без .tar
