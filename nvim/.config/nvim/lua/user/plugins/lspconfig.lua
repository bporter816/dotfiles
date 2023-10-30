return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            local lspconfig = require("lspconfig")
            local cmp_nvim_lsp = require("cmp_nvim_lsp")
            local capabilities = cmp_nvim_lsp.default_capabilities()
            lspconfig["gopls"].setup({ capabilities = capabilities })
            lspconfig["terraformls"].setup({ capabilities = capabilities })
            lspconfig["lua_ls"].setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim"},
                        },
                    },
                },
            })
        end,
    },
}
