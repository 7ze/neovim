--| @init.lua |--

require('plugins')
require('globals')

-- global settings
vim.cmd [[luafile ~/.config/nvim/settings.lua]]

require('options')
require('maps')

require('file_icons')
require('colorscheme')
require('nvim_tree')
require('nvim-bufferline')

require('nvim-compe')
require('lsp')
require('nvim-telescope')

