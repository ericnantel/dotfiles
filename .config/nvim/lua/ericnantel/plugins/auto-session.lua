return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")
		-- NOTE: Somehow this doesn't work on my end..
		-- It seems to work only if I open Nvim in the same
		-- directory I saved my session.
		-- So if I do 'nvim .' ;it might not work.
		-- I think this is related to the paths saved being relative;
		-- not absolute paths. 
		-- TODO: need to look further in the documentation.
        auto_session.setup({
			log_level = "error",
			auto_save_enabled = true,
            auto_restore_enabled = false,
            auto_sessions_suppress_dirs = {
                "~/",
				"~/Dev",
				"~/Projects",
                "~/Downloads",
                "~/Documents",
                "/",
            },
        })

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore Session for CWD" })
        keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save Session for Auto Session Root Dir" })
    end
}
