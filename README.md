# Neovim configuration

Private backup of the active LazyVim configuration. Includes `lazy-lock.json`.

## Restore

Move an existing `~/.config/nvim` directory to a backup first, then:

```sh
gh repo clone ahmedalhulaibi/nvim-config-private ~/.config/nvim
nvim
```

Lazy installs the locked plugins. Two development plugins require local
checkouts: `~/workspace/neo-tree.nvim` and `~/workspace/va/isomorph.nvim`.
Isomorph also requires `~/.cargo/bin/isomorph-lsp`.

`lua/plugins/theme.lua` is an Omarchy-managed symlink. On a machine without
Omarchy, replace that symlink with a local colorscheme specification.

## Save changes

```sh
git -C ~/.config/nvim add -A
git -C ~/.config/nvim commit -m "Update Neovim configuration"
git -C ~/.config/nvim push
```

Only committed and pushed changes are backed up on GitHub. Plugin caches,
undo history, and other Neovim state are outside this repository.
