# Домашнее задание к занятию 4 «Работа с Roles»

## Выполнил студент группы DevOps-25 Шаповалов Кирилл

<br />

Подготовка к выполнению
-----------------------

1. С Lighthouse познакомился при выполнении предыдущего задания.
2. Публичные репозитории создал (ссылки будут в конце задания):

<img src="./img/00-my-repos.png" width=750px height=auto>

3. Публичный ключ SSH к аккаунту на Github добавлен:

<img src="./img/00-ssh-key.png" width=750px height=auto>

<br />

Основная часть
--------------

<br />

### Основная цель - разбить `playbook` на отдельные `roles`.

### Задача - сделать `roles` для `ClickHouse, Vector и LightHouse` и написать `playbook` для использования этих ролей.

### Ожидаемый результат - существуют три ваших репозитория: два с `roles` и один с `playbook`.

<br />

    1. Создайте в старой версии playbook файл requirements.yml и заполните его содержимым:

<img src="./img/01-requirements.png" width=750px height=auto>

    2. При помощи ansible-galaxy скачайте себе эту роль.

<img src="./img/02-download-clickhouse-role.png" width=750px height=auto>

    3. Создайте новый каталог с ролью при помощи ansible-galaxy role init vector-role.

<img src="./img/03-role-init-vector.png" width=750px height=auto>

    4. На основе tasks из старого playbook заполните новую role. Разнесите переменные между vars и default.

Все переменные разнесены. В `defaults` вынесены переменные, которые можно переопределить пользователю, например, с помощью `group_vars`, в `vars` - те, которые ассоциированы с этой ролью. 

<img src="./img/04-default-vars.png" width=750px height=auto>

<img src="./img/04-vars-vars.png" width=750px height=auto>

Tasks и Handlers разнесены в `tasks/main.yml` и `handlers/main.yml` соответственно.

    5. Перенести нужные шаблоны конфигов в templates.

Готово.

<img src="./img/05-templates.png" width=750px height=auto>

    6. Опишите в README.md обе роли и их параметры. Пример качественной документации ansible role по ссылке.

<a href='./playbook/roles/vector_role/README.md'>Vector Readme</a> - файл Readme для роли установки и настройки Vector.

<a href='./playbook/roles/lighthouse_role/README.md'>Lighthouse Readme</a> - файл Readme для роли установки и настройки Lighthouse.

    7. Повторите шаги 3–6 для LightHouse. Помните, что одна роль должна настраивать один продукт.

Выполнено.

    8. Выложите все roles в репозитории. Проставьте теги, используя семантическую нумерацию. 
    Добавьте roles в requirements.yml в playbook.

Роли добавлены в соответствующие репозитории. Итоговый вид файла `requirements.yml`:

<img src="./img/08-requirements-with-all-roles.png" width=750px height=auto>

Проверим скачивание ролей:

<img src="./img/08-download-roles.png" width=750px height=auto>

    9. Переработайте playbook на использование roles. 
    Не забудьте про зависимости LightHouse и возможности совмещения roles с tasks.

Playbook переработан, приведен к следующему виду:

<img src="./img/09-playbook.png" width=750px height=auto>

    10. Выложите playbook в репозиторий.

<a href='./playbook/install.yml'>Playbook</a>

    11. В ответе дайте ссылки на оба репозитория с roles и одну ссылку на репозиторий с playbook.

Репозиторий с Vector-role - <a href='https://github.com/nvk-r0dney/vector-role'>ссылка</a>

Репозиторий с Lighthouse-role - <a href='https://github.com/nvk-r0dney/lighthouse-role'>ссылка</a>

Репозиторий с Playbook - <a href='https://github.com/nvk-r0dney/Netology/tree/main/homeWork/9.4/playbook'>ссылка</a>