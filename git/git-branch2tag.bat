rem @echo off

rem http://stackoverflow.com/questions/16660001/how-to-transform-an-old-branch-into-a-tag-on-github
rem http://stackoverflow.com/questions/4159950/how-do-i-delete-a-remote-branch-in-git

rem create the tag <tag_name> <branch_name>
git tag %2 origin/%1

rem delete the local branch
rem git branch -d %1

rem push the tag
git push --tags origin

rem delete the remote branch
rem git push origin :%1
git push origin :refs/heads/%1
