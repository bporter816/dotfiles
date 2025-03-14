return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      diagnostics = {
        enable = true,
      },
    })
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "toggle file tree" })
  end,
}
