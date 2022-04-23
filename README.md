treectl
=======

Worktrees allow for an interesting git workflow where different revisions
can be manipulated using the filesystem. `treectl` wraps the git command-line
interface to make this easier. Projects initialized and cloned with `treectl`
will contain a bare repository at `.git` and branches as directories:

```
repo_name
├── .git
├── master
├── foo
├── bar
└── [...]
```

`treectl` makes managing and navigating this kind of repository easier. 

Usage
-----
`$ treectl [command] [options] [arguments]`

| Command            | Description
| ------------------ | ---------------------------------------------------------- |
| add   NAME         | Add a worktree of NAME
| clone REMOTE LOCAL | Clone a worktree-optimized REMOTE repository to LOCAL path
| find  NAME         | Return the path of worktree NAME
| init  LOCAL        | Initialize a worktree-optimized repository in LOCAL path
| help               | Print this help message
| ls                 | List all local worktrees
| new   NAME         | Create a new branch NAME and add a worktree for it
| rm    NAME         | Remove a worktree for NAME

| Option    | Description                                   |
| --------- | --------------------------------------------- |
| -gh, --gh | Use GitHub CLI instead of git CLI for cloning |

*Note:* quickly changing between worktrees is only possible with interactive
shell customization. See the included `cdt.fish` for an example for the Fish
shell.

Requirements
------------
* Tcl 8.6 or later
* Fish shell (optional)

Installing
----------
Put `treectl` somewhere on your `$PATH` and optionally add the fish helper
function `cdt` to `~/.config/fish/functions`.

