--| @init.lua |--

require('plugins')
require('maps')

require('nvim-compe')
require('lsp')

vim.cmd [[luafile ~/.config/nvim/global_settings.lua]]
require('settings')
