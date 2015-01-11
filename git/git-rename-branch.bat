rem @echo off

rem http://blog.changecong.com/2012/10/rename-a-remote-branch-on-github/
git branch -m %1 %2
git push origin :%1
git push origin %2