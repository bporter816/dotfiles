plugins = {
    -- colorschemes
    "morhetz/gruvbox",
    "folke/tokyonight.nvim",
    "NLKNguyen/papercolor-theme",

    -- languages
    "hashivim/vim-terraform",
    "udalov/kotlin-vim",
    "dag/vim-fish",

    -- git
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",
}

opts = {}

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

require("lazy").setup(plugins, opts)


--    -- cmp
--    use { "hrsh7th/nvim-cmp" }
--    use { "hrsh7th/cmp-buffer" }
--    use { "hrsh7th/cmp-path" }
--    use { "hrsh7th/cmp-cmdline" }
--    use { "saadparwaiz1/cmp_luasnip" }
--
--    -- snippets
--    use { "L3MON4D3/LuaSnip" }
--    use { "rafamadriz/friendly-snippets" }
--
--    -- utils
--    use { "junegunn/fzf" }
--    use { "junegunn/fzf.vim" }
--
--end)
