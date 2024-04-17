-- truecolor
--return {
-- 	"catppuccin/nvim",
--	name = "catppuccin",
--	priority = 1000,
--	config = function()
--		require("catppuccin").setup({
--			flavour = "mocha",
--		})
--		vim.cmd("colorscheme catppuccin")
--	end
--}

-- 256 color
return {
	"doums/darcula",
	name = "darcula",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme darcula")
	end
}
