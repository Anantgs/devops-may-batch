### Basic commands

```
Dell@DESKTOP-CL9FNGA MINGW64 ~/OneDrive/Desktop/devops-may-batch (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)

Dell@DESKTOP-CL9FNGA MINGW64 ~/OneDrive/Desktop/devops-may-batch (master)
$

Dell@DESKTOP-CL9FNGA MINGW64 ~/OneDrive/Desktop/devops-may-batch (master)
$ git branch --all
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/master

Dell@DESKTOP-CL9FNGA MINGW64 ~/OneDrive/Desktop/devops-may-batch (master)
```

### create new branch and switch to it

```
Dell@DESKTOP-CL9FNGA MINGW64 ~/OneDrive/Desktop/devops-may-batch (master)
$ git checkout -b anant
Switched to a new branch 'anant'

Dell@DESKTOP-CL9FNGA MINGW64 ~/OneDrive/Desktop/devops-may-batch (anant)
$

```

### if i want to check my current branch

```
Dell@DESKTOP-CL9FNGA MINGW64 ~/OneDrive/Desktop/devops-may-batch (anant)
$ git status
On branch anant
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        GIT/

nothing added to commit but untracked files present (use "git add" to track)

Dell@DESKTOP-CL9FNGA MINGW64 ~/OneDrive/Desktop/devops-may-batch (anant)
$ git branch --all
* anant 
  master
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
```