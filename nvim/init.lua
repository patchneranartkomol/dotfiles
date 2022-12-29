vim.wo.number = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.syntax = 'ON'

vim.cmd('colorscheme solarized-dark')

-- Load specific configs
require('plugins')
require('lsp-settings')
require('telescope-settings')
