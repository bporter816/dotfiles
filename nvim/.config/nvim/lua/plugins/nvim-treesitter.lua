return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"hcl",
			"lua",
			"luadoc",
			"terraform",
			"vim",
			"vimdoc",
		},
		highlight = {
			enable = true,
		},
	},
}
