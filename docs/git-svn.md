# git-svn

## git svn clone

* It accepts all arguments that the `init` and `fetch` commands accept; with the exception of `--fetch-all` and `--parent`.
* --preserve-empty-dirs
* 若過程卡住或中斷，執行 `git svn fetch` 以繼續 clone

## git svn fetch

* 更新 `remotes/git-svn` branch 的 commits

## git svn rebase

* 相當於執行 `svn update`，會修改當下 branch 的 commits

## git svn dcommit

* 將當下 branch 的 commits 推回 SVN server
