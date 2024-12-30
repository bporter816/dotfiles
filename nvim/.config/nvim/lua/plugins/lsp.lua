return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
      vim.keymap.set("n", "<leader>M", ":Mason<CR>", { desc = "open mason" })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "gopls",
        "pyright",
        "terraformls",
        "ts_ls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = {
                "vim",
              },
            },
          },
        },
      })
      lspconfig.gopls.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.terraformls.setup({ capabilities = capabilities })
      lspconfig.ts_ls.setup({ capabilities = capabilities })

      vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>ln", vim.lsp.buf.rename, {})
    end,
  },
}
