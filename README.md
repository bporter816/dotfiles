# dotfiles
My Linux configuration files.

Installation instructions:
1. Make sure `zsh` is installed and set as the default shell.
2. Clone the repository. I like to keep it at `~/git/dotfiles/`.
3. Change into the repository directory and run `sh setup.sh`.
4. Run `source zsh/.zshrc`.
5. Note that `git/.gitconfig` is configured with my git identity.

The setup script does the following:
- clones several projects and tools I use for development, saving them as
  subdirectories of `~/git/`
- symlinks dotfiles in the home directory to files in this repository,
  __overwriting any existing dotfiles that share a file path with a file linked
  by the script__
- creates symlinks for `vim-plug` and `ruby-build`

The following assumptions are made about the system:
- `zsh` is installed and is the default shell
- Oracle JDK 10.0.2 is installed at `/usr/java/jdk-10.0.2/`
