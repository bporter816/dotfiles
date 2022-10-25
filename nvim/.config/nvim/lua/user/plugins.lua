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
    use { "wbthomason/packer.nvim" }
    use { "ellisonleao/gruvbox.nvim" }
end)
