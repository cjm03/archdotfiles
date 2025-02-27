vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set termguicolors")
vim.cmd("set clipboard+=unnamedplus")

vim.opt.swapfile = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.cursorline = false
vim.opt.scrolloff = 50
vim.opt.sidescrolloff = 5
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmode = false
vim.opt.cmdheight = 0

vim.o.laststatus = 3

vim.g.mapleader = " "
vim.keymap.set('i', 'jk', '<ESC>', { desc = "exit insert mode" })

-- tabs
vim.keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = "Open new tab" })
vim.keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = "Close current tab" })
vim.keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = "Go to next tab" })
vim.keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = "Go to previous tab" })
vim.keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = "Open current buffer in new tab" })

