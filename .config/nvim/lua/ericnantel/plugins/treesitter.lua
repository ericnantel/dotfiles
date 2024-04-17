return {
    "nvim-treesitter/nvim-treesitter",
    event = {
        "BufReadPre",
        "BufNewFile"
    },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag"
    },
    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({
           highlight = {
               enable = true,
           },
           indent = {
               enable = true,
           },
           autotag = {
               enable = true,
           },
           ensure_installed = {
               "json",
               "javascript",
               "typescript",
               "tsx",
               "yaml",
               "toml",
               "xml",
               "html",
               "css",
               "prisma",
               "markdown",
               "markdown_inline",
               "svelte",
               "graphql",
               "sql",
               "bash",
               "lua",
               "vim",
               "dockerfile",
               "gitignore",
               "query",
               "vimdoc",
               "c",
               "cpp",
               "c_sharp",
               "go",
               "rust",
               "zig",
               -- "mrald", one day..
               "python",
               "ruby",
               "php",
               "java",
           },
           incremental_selection = {
               enable = true,
               keymaps = {
                   init_selection = "<C-space>",
                   node_incremental = "<C-space>",
                   scope_incremental = false,
                   node_decremental = "<bs>",
               },
           },
        })
    end
}
