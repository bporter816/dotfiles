return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"terraform",
			"hcl",
			"lua",
			"luadoc",
			"vim",
			"vimdoc",
		},
		highlight = {
			enable = true,
		},
	},
}
