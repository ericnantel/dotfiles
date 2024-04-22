return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        -- import confirm plugin
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                javascript = { "prettierd", "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                svelte = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                toml = { "prettier" },
                markdown = { "mdformat, prettier" },
                graphql = { "prettier" },
                lua = { "stylua" },
                --go = { "golines", "goimports", "goimports-reviser" },
                python = {
                    "isort",
                    "black",
                },
                sh = { "shellcheck" },
                c = { "clang-format" },
                cpp = { "clang-format" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            },
        })

        -- set keymaps
        local keymap = vim.keymap

        keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            })
        end, { desc = "Format File or Range (in Visual Mode)" })
    end,
}
