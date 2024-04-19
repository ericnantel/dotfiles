return {
    "doums/darcula",
    name = "darcula",
    priority = 1000,
    config = function()
        -- import darcula plugin
        --local darcula = require("darcula")

        --darcula.setup()

        vim.cmd("colorscheme darcula")
    end,
}
