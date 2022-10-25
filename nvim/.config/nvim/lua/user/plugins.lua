vim.cmd [[packadd packer.nvim]]

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("packer not found!")
    return
end

return packer.startup(function(use)
    -- packer
    use { "wbthomason/packer.nvim" }

    -- colorschemes
    use { "ellisonleao/gruvbox.nvim" }

    -- cmp
    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }
    use { "hrsh7th/cmp-cmdline" }
    use { "saadparwaiz1/cmp_luasnip" }

    -- snippets
    use { "L3MON4D3/LuaSnip" }
    use { "rafamadriz/friendly-snippets" }
end)
