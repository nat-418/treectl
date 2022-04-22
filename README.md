treectl
=======
A command-line tool to help manage git worktrees

Usage
-----
`$ treectl [command] [options] [arguments]`

| Command                 | Description
| ----------------------- | -------------------------------------------- |
| list-all                | List all local worktrees                     |
| find-path  NAME         | Show the path to a given local worktree      |
| init-clone REMOTE LOCAL | Clone a worktree-optimized remote repository |

| Option    | Description                                   |
| --------- | --------------------------------------------- |
| -gh, --gh | Use GitHub CLI instead of git CLI for cloning |

For convenience, a few Fish shell functions are included:

* `clone-tree $remote $local` Sets up a clean worktree-centric clone of some
  remote repo like this: 

```
    repo_name
    ├── .git
    └── master
```

* `lst` Lists all worktree directories in your project
* `cdt $tree` Changes the working directory to some existing `$tree`

Requirements
------------
* Tcl 8.6 or later
* Fish shell (optional)

Installing
----------
Running the included `install` script will put `treectl` in `~/.local/bin/`
and the various fish helper functions in `~/.config/fish/functions`.

