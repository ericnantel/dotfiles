return {
    "gbprod/substitute.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        -- import substitute plugin
        local substitute = require("substitute")

        substitute.setup()

        -- set keymaps
        local keymap = vim.keymap

        vim.keymap.set("n", "s", substitute.operator, { desc = "Substitute w/ Motion" })
        vim.keymap.set("n", "ss", substitute.line, { desc = "Substitute Line" })
        vim.keymap.set("n", "S", substitute.eol, { desc = "Substitute to End of Line" })
        vim.keymap.set("x", "s", substitute.visual, { desc = "Substitute in Visual Mode" })
    end,
}
