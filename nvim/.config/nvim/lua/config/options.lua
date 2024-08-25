local options = {
	-- visual
	number = true,
	relativenumber = true,
	cursorline = true,
	termguicolors = true, -- needed for bufferline

	-- splits
	splitright = true,
	splitbelow = true,

	-- tabs
	tabstop = 4,
	shiftwidth = 4,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
