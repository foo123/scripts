@echo off

rem http://stackoverflow.com/questions/7244321/how-to-update-github-forked-repository
rem Add the remote, call it "upstream":

rem git remote add upstream https://github.com/mrdoob/three.js


git fetch upstream

rem Make sure that you're on your master branch:

git checkout master

rem Rewrite your master branch so that any commits of yours that
rem aren't already in upstream/master are replayed on top of that
rem other branch:

rem git rebase upstream/master
rem git rebase origin/master

rem If you don't want to rewrite the history of your master branch, (for example because other people may have cloned it) then you should replace the last command with git merge upstream/master. However, for making further pull requests that are as clean as possible, it's probably better to rebase.

rem Update: If you've rebased your branch onto upstream/master you may need to force the push in order to push it to your own forked repository on GitHub. You'd do that with:

rem git push -f origin master

rem You only need to use the -f the first time after you've rebased.