# Выполнение домашнего задания к занятию «2.2. Основы Git»

###  Выполнил студент группы DevOps-25 Шаповалов Кирилл

### Задание №1

1. В рамках данного задания был создан профиль на gitlab.com с использованием аккаунта на github.com. 

<img src="img/gitlab-acc.png" width="600px" height="auto">

Для репозитория настроены персональный токен и SSH  ключ

<img src="img/gitlab-token.png" width="600px" height="auto">

<img src="img/gitlab-ssh.png" width="600px" height="auto">

2. Изучен синтаксис командной строки, выбран способ добавления репозитория на локальный ПК с использваонием SSH.

3. До добавления нового удаленного репозитория вывод команды git remote -v выглядит следующим образом:

<img src="img/git-remote-before.png" width="600px" height="auto">

4. После добавления нового удаленного репозитория повторный вывод команды git remote -v выглядит следующим образом:

<img src="img/git-remote-after.png" width="600px" height="auto">

5. Выполнено добавление файлов в коммит и выполнен коммит, после чего файлы были запушены в оба удаленных репозитория

<img src="img/git-add-push.png" width="600px" height="auto">

6. История коммитов выглядит для всех репозиториев следующим образом:

<img src="img/commit-log.png" width="600px" height="auto">


### Задание №2

1. Добавлен легковесный тэг к коммиту

<img src="img/add-tag.png" width="600px" height="auto">

2. Выполнен пуш тэгов в оба репозитория:

<img src="img/push-tags.png" width="600px" height="auto">

Список тэгов на старницах репозиториев выглядит следующим образом:

для гитхаба:

<img src="img/github-tag.png" width="600px" height="auto">

для гитлаба:

<img src="img/gitlab-tag.png" width="600px" height="auto">

3. Добавлен и запушен аннотированный тэг

<img src="img/git-a-tag.png" width="600px" height="auto">

### Задание 3 и задание 4

1. От коммита "Prepare to delete and move" создана ветка "fix", в ней внесено изменение в файл readme.md. Изменения добавлены в коммит и запушены в репозиторий на гитхабе.

<img src="img/git-newbranch.png" width="600px" height="auto">

2. В веб-интерфейсе новая ветка выглядит следуюшим образом

<img src="img/github-newbrunch-web.png" width="600px" height="auto">

<img src="img/github-network.png" width="600px" height="auto">

3. А вот так выглядят ветки в VSCode с использованием расширения GitLens

<img src="img/gitlens-vscode.png" width="600px" height="auto">

4. В IDE VSCode управление репозиторием выглядит так

<img src="img/ide-vscode.png" width="600px" height="auto">

Как видно, в интерфейсе отражены все изменения и можно посмотреть в каком статусе находится каждый файл. Отсюда же можно выполнить коммит и синхронизацию с удаленным репозиторием.

Последний коммит и синхронизация выполнены из  IDE VSCode.