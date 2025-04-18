# Neovim config

- Plugin manager: [lazy.nvim](https://github.com/folke/lazy.nvim)


### Colour scheme
Currently using zenwritten, part of [zenbones](https://github.com/mcchrish/zenbones.nvim). This is a minimal, mostly monochrome colour scheme that uses contrast. I prefer this and find it less distracting - I want to read the code, not look at pretty colours. See also [A case against syntax highlighting](https://www.linusakesson.net/programming/syntaxhighlighting/)

I use [dark-notify](https://github.com/cormacrelf/dark-notify) to automatically sync the colour theme with MacOS light/dark mode.

### Fuzzy Finding
Uses [Telescope](https://github.com/nvim-telescope/telescope.nvim). Must install `ripgrep` via homebrew first.

[project.nvim](https://github.com/ahmedkhalf/project.nvim) ensures we navigate/search relative the project root.

- `ctrl-<space>`: Find files
- `ctrl-b`: find open buffers
- `ctrl-f`: search across entire working directory
