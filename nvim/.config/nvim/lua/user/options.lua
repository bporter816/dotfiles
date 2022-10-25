local options = {
    number = true,
    relativenumber = false,
    cursorline = true,
    colorcolumn = "81,121",

    termguicolors = true,
    background = "dark",

    splitbelow = true,
    splitright = true,

    mouse = "a",

    wrap = false,


    -- searching
    ignorecase = true,
    hlsearch = true,

    -- indentation
    expandtab = true,
    smarttab = true,
    tabstop = 4,
    shiftwidth = 4,
}

vim.opt.iskeyword:append "-" -- include dashes in words

for k, v in pairs(options) do
    vim.opt[k] = v
end
