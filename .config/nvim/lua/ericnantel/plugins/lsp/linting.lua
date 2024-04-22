return {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        -- import lint plugin
        local lint = require("lint")

        lint.linters_by_ft = {
            javascript = { "eslint_d" },
            typescript = { "eslint_d" },
            javascriptreact = { "eslint_d" },
            typescriptreact = { "eslint_d" },
            svelte = { "eslint_d" },
            python = { "pylint" },
            yaml = { "yamllint" },
            json = { "jsonlint" },
            markdown = { "markdownlint" },
            cpp = { "cpplint" },
            ruby = { "ruby" },
            php = { "php" },
            --go = { "golangcilint" },
            glsl = { "glslc" },
        }

        local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            group = lint_augroup,
            callback = function()
                lint.try_lint()
            end,
        })

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>l", function()
            lint.try_lint()
        end, { desc = "Trigger Linting for Current File" })
    end,
}
