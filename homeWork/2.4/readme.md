# Выполнение домашнего задания к занятию "2.4. Инструменты Git"

### Выполнил студент группы DevOps-25 Шаповалов Кирилл

> 00. Склонировать репозиторий Терраформ

![Terraform Clone](img/00.git-clone-terraform.png)

> 01. Найти полный хеш и комментарий коммита, хеш которого начинается на `aefea`.

![Terraform Clone](img/01.git-show.png)
![Terraform Clone](img/01.git-show-aefea.png)

> 02. Какому тегу соответствует коммит `85024d3`?

![Terraform Clone](img/02.git-show-tag.png)
![Terraform Clone](img/02.tag-12-03.png)

> 03. Сколько родителей у коммита `b8d720`? Напишите их хэши.

![Terraform Clone](img/03.git-show-b8d.png)
![Terraform Clone](img/03.git-show-b8d-merge.png)

Видим, что это merge коммит с двумя родителями. Краткие хэши указаны на скриншоте выше, посмотрим полную информацию о предках данного коммита командами `git show b8d720^1` и `git show b8d720^2`:

![Terraform Clone](img/03.git-show-b8d-parent1.png)
![Terraform Clone](img/03.git-show-b8d-parent2.png)

> 04. Перечислите хэши и комментарии всех коммитов, которые были сделаны между тегами `v0.12.23` и `v0.12.24`

![Terraform Clone](img/04.git-log.png)
![Terraform Clone](img/04.git-log-result.png)

> 05. Найдите коммит, в котором была создана функция `func providerSource`

![Terraform Clone](img/05.git-s.png)
![Terraform Clone](img/05.git-s-commits.png)

Коммит `8c928e8358` исторически был раньше, значит именно в нем и была создана функция. Убедимся в этом, просмотрев данный коммит:

![Terraform Clone](img/05.git-s-func-add.png)
![Terraform Clone](img/05.git-s-func-add-1.png)

Как видно на последнем скриншоте - именно в этом коммите были добавлены строки, в которых объявлена искомая функция.

> 06. Найдите все коммиты, в которых была изменена функция `globalPluginDirs`

Сначала найдем файл, в котором была объявлена данная функция

![Terraform Clone](img/06.git-grep-func.png)
![Terraform Clone](img/06.git-grep-func-result.png)

Ну и затем выведем все коммиты, в которых происходило изменение данной функции в данном файле

![Terraform Clone](img/06.git-log-func.png)

Вывод команды достаточно объемный, приложу часть его

![Terraform Clone](img/06.git-log-func-result.png)

> 07. Кто автор функции `synchronizedWriters`?

![Terraform Clone](img/07.git-log-func.png)
![Terraform Clone](img/07.git-log-func-result.png)

Коммит `5ac311e2a9` был раньше по дате, значит в нем была создана искомая функция и автор ее - Martin Atkins.