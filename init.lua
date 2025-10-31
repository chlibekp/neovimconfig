-- vim settings
vim.opt.guicursor = "" -- thick cursor
vim.opt.nu = true -- numbers
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.cmd("colorscheme unokai") 

require("core.lazy")

-- key bindings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>d", vim.cmd.Ex)


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
