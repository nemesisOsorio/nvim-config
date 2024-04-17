vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.list = true
vim.opt.listchars:append({ tab = '▸ ', space = '·' })

vim.opt.clipboard:append("unnamedplus")

vim.g.netrw_winsize = 30
