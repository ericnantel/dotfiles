return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")

        auto_session.setup({
            auto_restore_enabled = false,
            auto_sessions_suppress_dirs = {
                "~/",
                "~/Dev/",
                "~/Downloads",
                "~/Documents",
                "~/Desktop/",
            },
        })

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore Session for CWD" })
        keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save Session for Auto Session Root Dir" })
    end
}
