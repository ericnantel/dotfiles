vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('i', 'jk', '<ESC>', {desc = "Exit Insert Mode"})
vim.keymap.set('n', '<leader>+', '<C-a>', {desc = "Increment Number"})
vim.keymap.set('n', '<leader>-', '<C-x>', {desc = "Decrement Number"})
vim.keymap.set('n', '<leader>nh', '<cmd>nohl<CR>', {desc = "Clear Search Highlight"})
vim.keymap.set('n', '<leader>sv', '<C-w>v', {desc = "Split Window Vertically"})
vim.keymap.set('n', '<leader>sh', '<C-w>s', {desc = "Split Window Horizontally"})
vim.keymap.set('n', '<leader>se', '<C-w>=', {desc = "Make Splits Equal Size"})
vim.keymap.set('n', '<leader>sx', '<cmd>close<CR>', {desc = "Close Current Split"})
vim.keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', {desc = "Open New Tab"})
vim.keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', {desc = "Open New Tab with Current Buffer"})
vim.keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', {desc = "Close Current Tab"})
vim.keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', {desc = "Goto Next Tab"})
vim.keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', {desc = "Goto Previous Tab"})

-- vim-maximizer keymaps
vim.keymap.set('n', '<leader>sm', '<cmd>MaximizerToggle<CR>', {desc = "Maximize/Minimize Split Window"})
vim.keymap.set('v', '<leader>sm', '<cmd>MaximizerToggle<CR>gv', {desc = "Maximize/Minimize Split Window"})

-- Tmux Navigator keymaps
vim.keymap.set('n', '<c-h>', '<cmd>TmuxNavigateLeft<CR>', {desc = "Tmux Navigate Left", silent = true})
vim.keymap.set('n', '<c-j>', '<cmd>TmuxNavigateDown<CR>', {desc = "Tmux Navigate Down", silent = true})
vim.keymap.set('n', '<c-k>', '<cmd>TmuxNavigateUp<CR>', {desc = "Tmux Navigate Up", silent = true})
vim.keymap.set('n', '<c-l>', '<cmd>TmuxNavigateRight<CR>', {desc = "Tmux Navigate Right", silent = true})

-- vim-commentary keymaps
vim.keymap.set('n', 'z', 'gc', {desc = "", remap = true, silent = true})
vim.keymap.set('n', 'zz', 'gcc', {desc = "", remap = true, silent = true})
vim.keymap.set('v', 'z', 'gc', {desc = "", remap = true, silent = true})

-- vim-fugitive keymaps
--
