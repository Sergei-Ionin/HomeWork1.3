# HomeWork1.3

Changed branch on hw1.3
Add Dockerfile and folder init, file init.sql
Changed Dockerfile
Создан образ командой
docker build -t homework1.3:1.3 .
Создан контейнер командой
docker run -d -p 5432:5432 --name homework1.3_container homework1.3:1.3
Проверил появилась ли таблица в DBeaver
