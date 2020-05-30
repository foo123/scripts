@echo off

rem http://stackoverflow.com/questions/13716658/how-to-delete-all-commit-history-in-github
git init
git remote add origin "%1"
git add %cd%\*
git commit -am "%2"
git push -f origin master
