vim.wo.number = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.syntax = 'ON'

vim.cmd('colorscheme solarized-dark')

-- Using built-in package support (:help packages) for packages
-- in %XDG_CONFIG_HOME/nvim/pack/

-- Load specific configs
require('lspsettings') -- lua/lspsettings.lua
