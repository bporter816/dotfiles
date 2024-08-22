return {
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set('n', '<leader>gb', ":GBrowse<CR>", {})
			vim.keymap.set('x', '<leader>gb', ":GBrowse<CR>", {})
		end,
	},
	"tpope/vim-rhubarb",
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
}
