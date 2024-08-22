return {
	{
		"rebelot/kanagawa.nvim",
		config = function()
			-- vim.cmd("colorscheme kanagawa")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			-- vim.cmd("colorscheme gruvbox")
		end,
	},
	{
  		"folke/tokyonight.nvim",
  		lazy = false,
  		priority = 1000,
		config = function()
			vim.cmd("colorscheme tokyonight")
		end,
	},
}
