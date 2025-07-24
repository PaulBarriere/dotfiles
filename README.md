# Dotfiles

This repository defines my configuration files. It uses chezmoi (https://www.chezmoi.io/)
to manage these files.

## How to install :

### Requirements :

This repository implies that you have installed a certain number of libraries on your machine.
Here is a list of these requirements :

*   **Starship**: A customizable cross-shell prompt.
*   **ZSH**: Set as the default shell for the user.
*   **ChezMoi**: A tool to manage your configuration files (dotfiles).
*   **keepassxc**: For handling ".kdbx" files.
*   neovim: The best editor.
*   zoxide: cd better

### Installation :

For installation on a new machine of these dotfiles you have to follow the
following steps :

- Bring the keepass (.kdbx) file containing passwords. It will be used at the creation of some
  configuration files.
- Create a .chezmoi.toml file at ~/.config/chezmoi/
  The possible configuration for this file are presented in the Configuration Section
- Run the following commands :
  ```sh
  chezmoi init https://github.com/PaulBarriere/distrobox-dev 
  chezmoi apply
  ```

## Configuration

I use chezmoi templates to configure my dotfiles. Some configuration will be included at home
versus at work. Here are some configuration example :

### Thales Work Configuration
```toml
[keepassxc]
    database = "~/my_personal_database.kdbx"

[data]
    work_employer = "thales"
```

### EDF Work Configuration :
```toml
[keepassxc]
    database = "~/my_personal_database.kdbx"

[data]
    work_employer = "edf"
```
