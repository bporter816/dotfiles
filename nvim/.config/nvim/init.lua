-- nvim-tree setup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require "user.options"
require "user.keymaps" -- set keymaps before loading plugins so leader is correct
require "user.lazy"
