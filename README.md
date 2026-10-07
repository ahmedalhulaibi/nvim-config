# Neovim configuration

Active LazyVim configuration. Includes `lazy-lock.json`.

## Restore

Move an existing `~/.config/nvim` directory to a backup first, then:

```sh
gh repo clone ahmedalhulaibi/nvim-config ~/.config/nvim
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

## Security

Do not commit credentials, private keys, environment files, or private host
addresses. GitHub Actions scans Git history with Gitleaks on each push and pull
request. A passing scan is not a guarantee that every secret is detectable.

## Zig assembly and LLVM IR

The pinned `godbolt.nvim` fork loads at startup. In a saved Zig file:

- `<leader>cga` (Space, c, g, a): assembly.
- `<leader>cgi` (Space, c, g, i): LLVM IR.

Both keys save the current file and focus output mapped to the source cursor.
Source/output highlights follow cursor movement. `<leader>ca` remains the
standard code-action key.

With `build.zig`, the plugin invokes its `godbolt-asm`/`godbolt-ir` steps. These
must install `godbolt/output.s`/`godbolt/output.ll`; `zig-wc` provides both steps
and pins Zig 0.16.0 through mise. Without `build.zig`, the keys fall back to
standalone compilation. Project errors do not trigger that fallback.

Default optimization is Debug. Set `zig_build_args = { "-Doptimize=ReleaseFast" }`
in plugin options for optimized project output, or `zig_args = "-O ReleaseFast"`
for standalone output. Optimized-away source lines may have no mapping.

## Zig tests

Lazy configures `ahmedalhulaibi/neotest-zig` and installs the Zig Treesitter
parser. The adapter requires Zig 0.17; run tests through Neotest.
