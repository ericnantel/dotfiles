return {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        { "nvim-lua/plenary.nvim" },
    },
    opts = {},
    config = function()
        -- import todo-comments plugin
        local todo_comments = require("todo-comments")

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "]t", function()
            todo_comments.jump_next()
        end, { desc = "Next TODO Comment" })

        keymap.set("n", "[t", function()
            todo_comments.jump_prev()
        end, { desc = "Previous TODO Comment" })

        todo_comments.setup()
    end,
}
