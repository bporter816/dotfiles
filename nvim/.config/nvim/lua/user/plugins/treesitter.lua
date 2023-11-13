return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c",
                "lua",
                "hcl",
                "go",
                "bash",
            },
            highlight = {
                enable = true,
            },
        })
    end,
}