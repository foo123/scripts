rem @echo off

rem http://stackoverflow.com/questions/6335681/git-how-do-i-get-the-latest-version-of-my-code
git reset --hard HEAD
git clean -f
git pull