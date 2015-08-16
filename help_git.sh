# удалить ветку локально\удаленно
git branch -d <branch-name>
git push origin :<branch-name>
 
# remove files:
git rm $(git ls-files --deleted)
 
# Загрузить ветку локально c тем же названием:
git branch -r
git fetch origin
git checkout -b BRANCH origin/BRANCH
 
# Внести изменения в ветку отличную по названию:
git push origin test:remote-name
 
 
# Rebase (патчим основную ветку из экспериментальной):
 
git checkout experiment
git rebase master
git checkout master
git merge experiment
