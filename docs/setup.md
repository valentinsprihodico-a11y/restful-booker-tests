# API Automation Project (Postman + Newman + GitHub Actions)

Этот проект демонстрирует базовый CI/CD pipeline для API тестирования:

- Postman коллекции
- Newman (CLI runner)
- GitHub Actions (CI)
- Environment variables

API используется:
https://restful-booker.herokuapp.com

---

## Необходимые инструменты

Перед началом установи:

### 
1. Node.js
https://nodejs.org/

Проверка:
```bash
node -v
npm -v

2. Git

https://git-scm.com/

Проверка:

git --version

3. Newman (CLI runner для Postman)
npm install -g newman

Проверка:

newman -v


Структура проекта:
Создать структуру можно через CMD:

mkdir collections
mkdir environments
mkdir scripts
mkdir docs
mkdir .github
mkdir .github\workflows

Итоговая структура:
.github/
  workflows/
    api-tests.yml

collections/
  Restful_Booker_Collection.postman_collection.json

environments/
  environment.postman_environment.json

scripts/
  add-prj-to-remote.cmd
  init-git-locally.cmd
  run-newman-with-reports.cmd

docs/
  setup.md

Локальный запуск тестов
newman run collections/Restful_Booker_Collection.postman_collection.json ^
  -e environments/environment.postman_environment.json ^
  -r cli

CI/CD (GitHub Actions): Pipeline запускается автоматически при push в main:
- устанавливает Node.js
- устанавливает Newman
- запускает коллекцию

Файл:

.github/workflows/api-tests.yml
🔗 API

RESTful Booker:
https://restful-booker.herokuapp.com

⚙️ Git базовые команды

Инициализация:
git init

Добавление:
git add .

Коммит:
git commit -m "initial commit"

Подключение remote:
git remote add origin <repo-url>

Пуш:
git push -u origin main

После push:
открываем вкладку Actions
видим workflow run
зелёный статус = тесты прошли

Best Practice (важно):
environment НЕ хранить пустым
использовать {{baseUrl}}, а не хардкод
проверять локально перед push
разделять collection и environment
всегда запускать Newman локально перед CI

Итог - Этот проект демонстрирует:
API testing
CLI execution (Newman)
CI/CD automation (GitHub Actions)
basic project structuring

Сейчас это уже не “Postman проект”, а **мини QA automation framework**