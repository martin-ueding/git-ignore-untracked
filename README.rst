.. Copyright © 2012-2014, 2016-2017 Martin Ueding <martin-ueding.de>

####################
git-ignore-untracked
####################

This script lets you add all untracked files to the ``.gitignore``. If you
want, it will automatically commit them.

A sample usage looks like this::

    $ git init demonstration
    Initialized empty Git repository in /tmp/demonstration/.git/

    $ cd demonstration/

    $ git status -s

    $ touch foo.class

    $ git status -s
    ?? foo.class

    $ git ignore-untracked -h
    usage: git-ignore-untracked [-h] [-n] [-c] [-m MESSAGE]

    Queries git for untracked files and adds them to the ignored files list.

    optional arguments:
      -h, --help            show this help message and exit
      -n, --dry-run         Perform a dry run only.
      -c, --commit          Commits the .gitignore automatically.
      -m MESSAGE, --message MESSAGE
                            Commit message (default: “Ignore all other files”).

    $ git ignore-untracked -c
    [master (root-commit) 9bc4f21] Ignore all other files
     1 file changed, 1 insertion(+)
     create mode 100644 .gitignore

    $ git log --oneline
    9bc4f21 Ignore all other files

    $ git status -s

    $
