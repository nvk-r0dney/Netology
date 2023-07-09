## Playbook site.yml

### Описание 

Playbook устанавливает из официальных репозиториев `Clickhouse`, а также скачивает и устанавливает `Vector`.

Playbook написан для операционной системы `Centos 8 Stream`, но будет работать так же с любой системой, где есть пакетный менеджер `dnf` и формат пакетов `rpm`.

### Plays

1. <b>Install Clickhouse</b> - устанавливает ПО Clickhouse без скачивания с официальных репозиториев.
2. <b>Install Vector</b> - скачивает и устанавливает ПО Vector.

### Handlers

1. <b>Start clickhouse service</b> - осуществляет перезапуск сервиса `clickhouse-server`

### Tasks

1. <b>Install Clickhouse | Install Clickhouse from remote repo</b> - устанавливает Clickhouse нужной версии из пакетов `rpm` с официальных репозиториев. Для вызова таски можно использовать тег `install_clickhouse`.
2. <b>Install Clickhouse | Flush handlers</b> - сбрасывает все обработчики.
3. <b>Install Clickhouse | Create Database</b> - создает базу данных `logs`, если база данных создана и код возврата равен нулю - будет статус `changed`. Можно вызвать таск по тегу `create_database`.
4. <b>Install Vector | Create dir for dst</b> - создает папку `/opt/vector` для загрузки дистрибутива Vector и устанавливает права 777 на данную папку.
5. <b>Install Vector | Download Vector distrib</b> - скачивает архив с исполняемым файлом Vector с официального сайта. Можно вызвать по тегу `download_vector_distrib`.
6. <b>Install Vector | Unpack Vector distrib</b> - распаковывает исполняемый файл Vector и назначает на него права 755. Можно вызвать по тегу `unpack_vector`.
7. <b>Install Vector | Copy Vector.bin file</b> - копирует исполняемый файл Vector в папку с испоняемыми файлами `/usr/bin` и назначает права 755 на файл.
8. <b>Install Vector | Check Vector install</b> - проверяет установку, выполняя команду `vector --version`. Возвращает статус `OK`, если версия Vector будет находидться в стандартном потоке вывода, или статус `Changed` - если версии Vector обнаружено не будет. Можно вызвать по тегу `check_vector_version`.