vim.g.mapleader = ","

-- disable netrw at the very start of your init.lua
-- using nvim-tree instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Define plugins
require("lazy").setup('plugins')

-- Colors
vim.opt.termguicolors = true
vim.cmd("colorscheme zenwritten")

-- Completion
vim.opt.updatetime = 300


-- User Interface
vim.opt.showmode = false         -- Do not show current mode

vim.opt.splitbelow = true        -- Horizonal split below current
vim.opt.splitright = true        -- Vertical split to right of current

vim.opt.scrolloff = 10           -- Show next n lines when scrolling
vim.opt.sidescrolloff = 5        -- Show next n columns when side-scrolling
vim.opt.wrap = false             -- Do not wrap lines

vim.opt.signcolumn = "number"    -- Show signs in number column
vim.opt.number = true            -- Show line numbers
vim.opt.numberwidth = 4          -- Width of line number

-- Indentation
vim.opt.expandtab = true         -- Spaces, not tabs
vim.opt.tabstop = 2              -- Use this many spaces
vim.opt.shiftwidth = 2           -- Indentation for < and > commands
vim.opt.autoindent = true

-- Searching
vim.opt.ignorecase = true        -- Case-insensitive search
vim.opt.smartcase = true         -- ...unless query has capital letters

-- Clipboard
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("v", "p", "\"_dP")

-- Keys
vim.keymap.set("n", " ", ":")    -- Space instead of :

-- <ctrl-arrow> to navigate panes
vim.keymap.set("", "<C-up>", "<C-w><up>")
vim.keymap.set("", "<C-down>", "<C-w><down>")
vim.keymap.set("", "<C-right>", "<C-w><right>")
vim.keymap.set("", "<C-left>", "<C-w><left>")

-- Change Directory
-- So that you navigate relative to the current file
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  command = "silent! lcd %:p:h"
})
