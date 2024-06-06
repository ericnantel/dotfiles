
-- vim.opt.shada = { "'10", "<0", "s10", "h" }

-- vim.cmd [[ let g:netrw_liststyle=3 ]]
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.syntax = on

vim.opt.background = "dark"
-- vim.opt.termguicolors = true
vim.cmd [[ colorscheme darcula ]]

vim.cmd [[autocmd BufNewFile,BufRead *.z80.asm set filetype=z80]]
vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]

vim.opt.title = false
vim.opt.clipboard:append("unnamedplus")
vim.opt.encoding = "utf-8"
vim.opt.wrap = false
vim.opt.splitbelow = true
vim.opt.splitright = true
-- vim.opt.splitkeep = "cursor"
-- vim.opt.mouse = ""
-- vim.opt.formatoptions:remove "o"
-- vim.opt.formatoptions:append({"r"})
vim.opt.path:append({"**"})
vim.opt.wildignore:append({
	".git", ".hg", ".svn",
	"*.o", "*.obj", "*.zip", "*.exe", "*.dll", "*.a", "*.so", "*.pyc",
	"*.class", ".idea", "*.swp", "*.DS_Store", "*.meta",
	'*.bmp', '*.jpg', '*.jpeg', '*.png', '*.psd',
	"*/out/*", "*/build/*", "*/node_modules/*",
})

vim.opt.updatetime = 300

vim.opt.timeout = true
vim.opt.timeoutlen = 300

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.backspace = {"indent", "eol", "start"}
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.shiftround = true
-- vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- vim.opt.inccommand = "split"

vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.history = 20
vim.opt.cmdheight = 2

