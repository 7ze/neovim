--| @colorscheme.lua |--

local cmd = vim.cmd

cmd('syntax on')
cmd('set termguicolors')
cmd('colorscheme ' .. O.colorscheme)

