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
            lspconfig["yamlls"].setup({ capabilities = capabilities })
            lspconfig["pyright"].setup({ capabilities = capabilities })
            lspconfig["bashls"].setup({ capabilities = capabilities })
            lspconfig["tsserver"].setup({ capabilities = capabilities })

            vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev)
            vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next)
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspConfig", {}),
                callback = function(ev)
                    local opts = { buffer = ev.buf }
                    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                end,
            })
        end,
    },
}
