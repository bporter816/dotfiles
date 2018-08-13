# dotfiles
My Linux configuration files.

To set up, clone and run `source setup.sh`. The script does the following:
- clones several projects and tools I use for development, saving them as
  subdirectories of `~/git/`
- symlinks dotfiles in the home directory to files in this repository,
  __overwriting any existing dotfiles that share a file path with a file linked
  by the script__
- creates symlinks for `vim-plug` and `ruby-build`
- sources `zsh/.zshrc`

The following assumptions are made about the system:
- Oracle JDK 10.0.2 is installed at `/usr/java/jdk-10.0.2/`

Note that `git/.gitconfig` is configured with my git identity.
