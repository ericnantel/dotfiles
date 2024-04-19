return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        on_attach = function(bufnr)
            -- import gitsigns plugin
            local gs = package.loaded.gitsigns

            -- set keymaps
            local keymap = vim.keymap

            -- buffer local mappings
            local opts = {
                buffer = bufnr,
                desc = "",
            }

            -- navigation
            opts.desc = "Next Hunk"
            keymap.set("n", "]h", gs.next_hunk, opts)

            opts.desc = "Previous Hunk"
            keymap.set("n", "[h", gs.prev_hunk, opts)

            -- actions
            opts.desc = "Stage Hunk"
            keymap.set("n", "<leader>hs", gs.stage_hunk, opts)

            opts.desc = "Reset Hunk"
            keymap.set("n", "<leader>hr", gs.reset_hunk, opts)

            opts.desc = "Stage Hunk"
            keymap.set("v", "<leader>hs", function()
                gs.stage_hunk({
                    vim.fn.line("."),
                    vim.fn.line("v"),
                })
            end, opts)

            opts.desc = "Reset Hunk"
            keymap.set("v", "<leader>hr", function()
                gs.reset_hunk({
                    vim.fn.line("."),
                    vim.fn.line("v"),
                })
            end, opts)

            opts.desc = "Stage Buffer"
            keymap.set("n", "<leader>hS", gs.stage_buffer, opts)

            opts.desc = "Reset Buffer"
            keymap.set("n", "<leader>hR", gs.reset_buffer, opts)

            opts.desc = "Undo Stage Hunk"
            keymap.set("n", "hu", gs.undo_stage_hunk, opts)

            opts.desc = "Previous Hunk"
            keymap.set("n", "hp", gs.preview_hunk, opts)

            opts.desc = "Blame Line"
            keymap.set("n", "hb", function()
                gs.blame_line({
                    full = true,
                })
            end, opts)

            opts.desc = "Toggle Blame Line"
            keymap.set("n", "hB", gs.toggle_current_line_blame, opts)

            opts.desc = "Diff This"
            keymap.set("n", "hd", gs.diffthis, opts)

            opts.desc = "Diff This ~"
            keymap.set("n", "hD", function()
                gs.diffthis("~")
            end, opts)

            -- text object
            opts.desc = "Gitsigns Select Hunk"
            keymap.set({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", opts)
        end,
    },
}
