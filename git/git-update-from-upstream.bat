@echo off

rem http://stackoverflow.com/questions/7244321/how-to-update-github-forked-repository
rem Add the remote, call it "upstream":

rem git remote add upstream https://github.com/mrdoob/three.js


rem http://stackoverflow.com/questions/14318234/ignoring-your-local-changes-to-the-following-files-would-be-overwritten-by-merg
rem If you want remove all local changes from your working copy, simply stash them:

git stash save --keep-index

rem If you don't need them anymore, you now can drop that stash:

git stash drop

rem If you want to overwrite only specific parts of your local changes, there are two possibilities:

rem Commit everything you don't want to overwrite and use the method above for the rest.
rem Use git checkout path/to/file/to/revert for the changes you wish to overwrite. Make sure that file is not staged via git reset HEAD path/to/file/to/revert.


rem Fetch all the branches of that remote into remote-tracking branches,
rem such as upstream/master:

git fetch upstream

rem Make sure that you're on your master branch:

git checkout master

rem Rewrite your master branch so that any commits of yours that
rem aren't already in upstream/master are replayed on top of that
rem other branch:

git rebase upstream/master

rem If you don't want to rewrite the history of your master branch, (for example because other people may have cloned it) then you should replace the last command with git merge upstream/master. However, for making further pull requests that are as clean as possible, it's probably better to rebase.

rem Update: If you've rebased your branch onto upstream/master you may need to force the push in order to push it to your own forked repository on GitHub. You'd do that with:

git push -f origin master

rem You only need to use the -f the first time after you've rebased.