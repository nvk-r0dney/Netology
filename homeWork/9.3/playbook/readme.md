## Структура проекта

### Раздел <b>group_vars</b>

Данный раздел содержит переменные для групп хостов `clickhouse`, `lighthouse` и `vector`.

### Раздел <b>inventory</b>

Данный раздел содержит inventory-файл для прод окружения с адресами хостов `clickhouse`, `lighthouse` и `vector`.

### Раздел <b>templates</b>

Данный раздел содержит шаблоны конфигурационных файлов для `clickhouse-server`, `lighthouse`, `nginx`, `vector`, а так же unit-file для `vector`. Все файлы в формате `j2`.

### Файл <b>playbook.yml</b>

Данный файл является основным выполняемым ansible playbook-файлом. 

Playbook загружает и устанавливает на соответствующие группы хостов ПО `Clickhouse`, `Lighthouse` и `Vector`, а также выполняет их конфигурирование с помощью шаблонов конфигурационных файлов в формате `j2`.

<br />

### Play `Install Clickhouse`

Выполняет установку из удаленного репозитория `Clickhouse` и конфигурирует сервер.

#### <b>handlers</b>

* <b>Start clickhouse service</b> - осуществляет перезапуск сервиса `clickhouse-server`

#### <b>tasks</b>

* <b>Install Clickhouse | Install Clickhouse from remote repo</b> - устанавливает Clickhouse нужной версии из пакетов `rpm` с официальных репозиториев. Для вызова таски можно использовать тег `install_clickhouse`.
* <b>Install Clickhouse | Copy Clickhouse-config file</b> - копирует конфигурационный файл для сервиса `clickhouse-server` в указанное расположение (используется шаблон `clickhouse.xml.j2`).
* <b>Install Clickhouse | Flush handlers</b> - сбрасывает все обработчики.
* <b>Install Clickhouse | Create Database</b> - создает базу данных `logs`, если база данных создана и код возврата равен нулю - будет статус `changed`. Можно вызвать таск по тегу `create_database`.

<br />

### Play `Install Lighthouse`

Выполняет загрузку Lighthouse из Github-репозитория, устанавливает веб-сервер nginx, настраивает отображение web-интерфейса Lighthouse.

#### <b>handlers</b>

* <b>Start nginx web-server</b> - осуществляет перезапуск сервиса `nginx.server`

#### <b>pre_tasks</b>

* <b>Install Lighthouse | Install packages</b> - выполняет установку пакетов `git, epel-release`, необходимые для загрузки и запуска nginx и lighthouse.
* <b>Install Lighthouse | Install nginx</b> - устанавливает web-сервер nginx.
* <b>Install Lighthouse | Config nginx</b> - выполняет конфигурирование сервера nginx (используется шаблон `nginx.conf.j2`). Можно вызвать отдельно по тегу `config_nginx`.

#### <b>tasks</b>

* <b>Install lighthouse | Clone git repo</b> - выполняет клоривание Github-репозитория с дистрибутивом Lighthouse в заданную папку. Можно вызвать по тегу `clone_repo_lighthouse`.
* <b>Lighthouse Install | Copy nginx site config file</b> - выполняет конфигурирование веб-сервера nginx для отображения веб-интерфейса Lighthouse (используется шаблон `lighthouse.conf.j2`). Перезапускает сервер nginx. Можно вызвать по тегу `config_lighthouse_service`.

<br />

### Play `Install Vector`

Скачивает, устанавливает и настраивает Vector на соответствующей группе хостов.

#### <b>handlers</b>

* <b>Restart Vector</b> - выполняет обновление списка сервисов и перезапуск сервиса vector в случае изменения unit-файла vector.

#### <b>tasks</b>

* <b>Install Vector | Create dir for dst</b> - создает папку `/opt/vector` для загрузки дистрибутива Vector и устанавливает права 777 на данную папку.
* <b>Install Vector | Download Vector distrib</b> - скачивает архив с исполняемым файлом Vector с официального сайта. Можно вызвать по тегу `download_vector_distrib`.
* <b>Install Vector | Unpack Vector distrib</b> - распаковывает исполняемый файл Vector и назначает на него права 755. Можно вызвать по тегу `unpack_vector`.
* <b>Install Vector | Copy Vector.bin file</b> - копирует исполняемый файл Vector в папку с испоняемыми файлами `/usr/bin` и назначает права 755 на файл.
* <b>Install Vector | Copy Vector-config file</b> - настраивает vector с помощью шаблона yaml config файла `vector.yaml.j2`. По данному шаблону создается файл `/opt/vector/vector.yaml`, который используется при запуске vector как сервиса.
* <b>Install Vector | Copy Vector systemd unit file</b> - создает systemd unit файл `vector.service` из шаблона `vector.service.j2`, после чего вызывает handler `Restart Vector`.
* <b>Install Vector | Check Vector install</b> - проверяет установку, выполняя команду `vector --version`. Возвращает статус `OK`, если версия Vector будет находидться в стандартном потоке вывода, или статус `Changed` - если версии Vector обнаружено не будет. Можно вызвать по тегу `check_vector_version`.