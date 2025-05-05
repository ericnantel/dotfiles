-- vim-tmux-navigator globals
vim.g.tmux_navigator_no_mappings = 1
vim.g.tmux_navigator_save_on_switch = 0
-- vim.g.tmux_navigator_disable_when_zoomed = 1
-- vim.g.tmux_navigator_preserve_zoom = 1
vim.g.tmux_navigator_no_wrap = 1

-- vim-maximizer globals
vim.g.maximizer_set_default_mapping = 1

-- vim-signature globals
vim.g.SignatureWrapJumps = 1
vim.g.SignatureMarkTextHLDynamic = 1

-- vim-commentary globals
vim.cmd([[autocmd FileType z80 setlocal commentstring=;\ %s]])
vim.cmd([[autocmd FileType glsl setlocal commentstring=//\ %s]])
vim.cmd([[autocmd FileType lisp setlocal commentstring=;;\ %s]])

-- vim-gitgutter globals
vim.g.gitgutter_enabled = 1
vim.g.gitgutter_signs = 1
vim.g.gitgutter_async = 1
