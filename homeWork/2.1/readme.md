# Выполнение задания 2.1
## Выполнил студент группы DevOps-25 - Шаповалов Кирилл

1. В рамках обучения был Зарегистрирован аккаунт на Github: <a href="https://github.com/nvk-r0dney/">Ссылка на аккаунт</a>

2. Создан публичный репозиторий: <a href="https://github.com/nvk-r0dney/Netology">Ссылка на репозиторий</a>

3. Создан Personal access token (Classic)
<img src="img/token.png" width="600px" height="auto">

4. Репозиторий склонирован на рабочую машину командой git clone https://github.com/nvk-r0dney/Netology.git /home/rodney/Documents/Learning/

5. В рабочей папке репозитория произведена первоначальная настройка
<img src="img/show.png" width="600px" height="auto">

6. Произведены манипуляции с изменениями и командами git status и git diff
<img src="img/git_status.png" width="600px" height="auto">

<img src="img/git_status_2.png" width="600px" height="auto">

<img src="img/git_diff_staged.png" width="600px" height="auto">

Вывод: команда git diff - отображает изменения в файлах еще не добавленных в коммит, при этом в это время команда git diff --staged не покажет ничего. После команды git add ситуация меняется, команда git diff --staged отображает изменения в файлах.

7. После этого осуществлен коммит
<img src="img/git_commit_status.png" width="600px" height="auto">

8. После коммита команда git status показывает, что главная ветка обновлена, а команды git diff и git diff --staged не показывают ничего, так как изменений больше нет.

9. Добавлен файл .gitignore, выполнена команда git status
<img src="img/add_gitignore.png" width="600px" height="auto">

10. Создана дирректория terraform, а в ней файл .gitignore по указанному шаблону.

11. В файле .gitignore для каталога terraform настроено игноироривание скрытого каталога .terraform, причем с любым уровнем вложенности до и с одним уровнем вложенности после - два символа звездочки до каталога и один символ после. Также будут проигнорированы скрытые файлы tfstate с любым количеством символов, файлы крэш-логов, в одном из которых так же может быть любое количество символов - crash.*.log. Также будут проигнорированы скрытые файлы .tfvars и .tfvars.json, которые могут содержать приватную информацию в виде паролей, ключей доступа и т.д. а также все файлы (скрытые и не скрытые) ovveride.tf и override.tf.json и файлы настройки утилиты командной строки - terraform.rc и скрытый .terraformrc