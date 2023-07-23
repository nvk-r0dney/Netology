lighthouse-role
=========

Роль по установке и настройке Lighthouse, созданная в учебных целях.

Requirements
------------

Роль написана для EL-систем (CentOS 8 Stream, CentOS 9 Stream)

Role Variables
--------------

| Variable | Default value | Description |
-----------|---------------|------------
| lighthouse_repo | https://github.com/VKCOM/lighthouse.git | Определяет источник скачивания Lighthouse |
| lighthouse_site_path | /usr/share/nginx/lighthouse | Определяет путь для Lighthouse на хосте |
| lighthouse_user | cloud-user | Определяет пользователя для работы сервиса nginx.service |

Tags
----

| Tag | Description |
|-----|-------------|
| config_nginx | Таск определяет настройки веб-сервера nginx по указанному шаблону |
| clone_repo_lighthouse | Таск клонирует Lighthouse из указанного Git-репозитория |
| config_lighthouse_service | Таск определяет настройки Lighthouse для веб-сервера nginx по указанному шаблону |

Author Information
------------------

Author: Kirill Shapovalov

Group: netology-devops-25
