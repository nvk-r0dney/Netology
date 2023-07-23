vector-role
=========

Роль по установке и настройке Vector, созданная в учебных целях.

Requirements
------------

Роль написана для EL-систем (CentOS 8 Stream, CentOS 9 Stream)

Role Variables
--------------

| Variable | Default value | Description |
-----------|---------------|------------
| vector_version | 0.30.0 | Определяет версию Vector для установки |
| vector_data_path | /var/lib/vector | Определяет путь, куда Vector будет писать данные
| vector_user | cloud-user | Определяет пользователя для запуска сервиса vector.service


Tags
----

| Tag | Description |
|-----|-------------|
| download_vector_distrib | Таск скачивает указанную версию Vector в подготовленную папку |
| unpack_vector | Таск рапаковывает Vector в указанную папку |
| copy_vector_and_install | Таск копирует исполняемый файл Vector в папку с исполняемыми файлами в операционной системе |
| copy_vector_conf | Таск создает конфигурационный файл `vector.yaml` по указанному шаблону |
| create_vector_service | Таск создает сервис `vector.service`, используя шаблонный файл |
| check_vector_version | Таск проверяет корректность установки нужной версии Vector |

Author Information
------------------

Author: Kirill Shapovalov

Group: netology-devops-25
