vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- column
opt.relativenumber = true
opt.number = true
opt.signcolumn = "yes"

-- command
opt.showcmd = true
opt.showmode = true
opt.cmdheight = 2

-- cursor
opt.cursorline = true
opt.scrolloff = 15

-- tabs & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
-- opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- misc
-- opt.history = 1000
-- opt.showmatch = true

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- color settings
-- opt.termguicolors = true
opt.background = "dark"
