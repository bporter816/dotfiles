return {
	"nvim-tree/nvim-tree.lua",
	config = function()
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
		vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", { desc = "toggle file tree" })
	end,
}
