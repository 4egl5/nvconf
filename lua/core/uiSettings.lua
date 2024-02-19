-- set color scheme
-- vim.cmd('colorscheme slate')
-- check lua.plugins.colorScheme.lua

-- Line Number
vim.wo.number = true

-- vim.opt 		= :set
-- vim.opt_global 	= :setglobal
-- vim.opt_local 	= :setlocal

-- ic: Ignore Case
vim.opt.ic = true
-- hls: Highlight when search
vim.opt.hls = true
-- autowrite: Auto save when typing
vim.opt.autowrite = true
-- autoread: Update document view when file modified
vim.opt.autoread = true
-- cursorline: A visual line show the current cursor line position
vim.opt.cursorline = true
-- show cmd history
vim.opt.showcmd = true

-- Use spce for tab
vim.opt.expandtab = false

-- change key binds
-- new tab
vim.keymap.set("n", "<leader>t", ":tab vne<CR>")
-- new window

vim.keymap.set("n", "<leader>n", ":vne<CR>")

-- control window size
vim.keymap.set("n", "<M-Up>",":vertical resize +5<CR>")
vim.keymap.set("n", "<M-Down>",":vertical resize -5<CR>")
vim.keymap.set("n", "<M-Left>",":horizontal resize -5<CR>")
vim.keymap.set("n", "<M-Right>",":horizontal resize +5<CR>")
