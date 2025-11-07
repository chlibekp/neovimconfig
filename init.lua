-- vim settings
vim.opt.guicursor = "" -- thick cursor
vim.opt.nu = true      -- numbers
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8

require("core.lazy")

vim.cmd(":colorscheme tokyonight-night")

-- readme
-- <leader>g = explorer
-- <leader>n = new vertical split
-- <leader>nv = new horizontal split
-- <leader>x = close current window
-- <leader>xx = close current buffer
-- <leader>f = find files (telescope)
-- <leader>ff = format file
-- <leader>chat = open copilot chat
-- <leader><Left> = previous buffer
-- <leader><Right> = next buffer

-- KEY BINDINGS
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>d", vim.cmd.Ex)

-- Write
vim.keymap.set("n", "<leader>w", ':write<CR>', { noremap = true, silent = true })

-- Buffer navigation
vim.keymap.set("n", "<leader><Left>", ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader><Right>", ':bnext<CR>', { noremap = true, silent = true })

-- Close current window
vim.keymap.set('n', '<leader>x', ':hide<CR>', { noremap = true, silent = true })

-- Close current buffer
-- vim.keymap.set('n', '<leader>xx', ':bdelete<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>xx', ':bnext | bd#<CR>', { silent = true, desc = 'Close current buffer' })

-- New split
vim.keymap.set('n', '<leader>n', ':vsplit<CR>', { noremap = true, silent = true })

-- New horizontal split
vim.keymap.set('n', '<leader>nv', ':split<CR>', { noremap = true, silent = true })

-- Open copilot chat
vim.keymap.set('n', '<leader>chat', ':CopilotChatOpen<CR>', { noremap = true, silent = true })

-- Open telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })

vim.keymap.set("n", '<leader>ff', vim.lsp.buf.format, { noremap = true, silent = true, desc = 'Format file' })

-- END OF KEY BINDINGS
