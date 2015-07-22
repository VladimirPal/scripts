# отменить локальные коммиты, но сохранить все локальные изменения
git reset HEAD^

# удалить ветку локально\удаленно
git branch -d <branch-name>
git push origin :<branch-name>
 
# remove files:
git rm $(git ls-files --deleted)
 
# show remote branches:
git branch -a
 
# Загрузить ветку локально:
git checkout -b test remote-name/test
 
# Внести изменения в ветку отличную по названию:
git push origin test:remote-name
 
 
# Rebase (патчим основную ветку из экспериментальной):
 
git checkout experiment
git rebase master
git checkout master
git merge experiment
