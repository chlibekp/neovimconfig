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

-- Buffer navigation
vim.keymap.set("n", "<leader><Left>", ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader><Right>", ':bnext<CR>', { noremap = true, silent = true })

-- Close current buffer
vim.keymap.set('n', '<leader>x', ':hide<CR>', { noremap = true, silent = true })

-- New vertical split
vim.keymap.set('n', '<leader>n', ':vsplit<CR>', { noremap = true, silent = true })

-- New horizontal split 
vim.keymap.set('n', '<leader>nv', ':split<CR>', { noremap = true, silent = true })

-- Open copilot chat
vim.keymap.set('n', '<leader>chat', ':CopilotChatOpen<CR>', { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
