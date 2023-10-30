local options = {
    -- visual
    number = true,
    relativenumber = false,
    cursorline = true,
    colorcolumn = "81,121",
    laststatus = 2, -- always show status line
    wrap = false,
    showmode = false,

    termguicolors = true,
    background = "dark",

    -- utilities
    mouse = "a", -- enable mouse in all modes
    scrolloff = 10,
    splitbelow = true,
    splitright = true,


    -- searching
    ignorecase = true,
    hlsearch = true, -- highlight search results
    incsearch = true, -- highlight matches while typing the search

    -- indentation
    expandtab = true,
    smarttab = true,
    softtabstop = 4,
    shiftwidth = 4,
    tabstop = 4,
}

vim.opt.iskeyword:append "-" -- include dashes in words

for k, v in pairs(options) do
    vim.opt[k] = v
end
