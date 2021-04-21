--|  @maps.lua  |--

local utils = require('utils')

-- leader key
vim.g.mapleader = ' '
utils.map('n', '<Space>', '')

-- toggle higlight
utils.map('n', '<Leader>h', ':set hlsearch!<CR>')

-- easy escape
utils.map('i', 'jk', '<ESC>')
utils.map('i', 'kj', '<ESC>')
utils.map('i', 'jj', '<ESC>')

-- explorer
utils.map('n', '<Leader>e', ':NvimTreeToggle<CR>')

-- indenting
utils.map('v', '<', '<gv')
utils.map('v', '>', '>gv')

-- switch buffer
utils.map('n', '<TAB>', ':bnext<CR>')
utils.map('n', '<S-TAB>', ':bprevious<CR>')

-- move lines in visual mode
utils.map('x', 'K', [[:move '<-2<CR>gv-gv']])
utils.map('x', 'J', [[:move '>+1<CR>gv-gv']])

-- completion
local opt = { expr = true }
utils.map('i', '<expr><TAB>', [[pumvisible() ? '\<C-n>' : '\<TAB>']], opt)
utils.map('i', '<expr><S-TAB>', [[pumvisible() ? '\<C-p>' : '\<S-TAB>']], opt)

-- better window navigation
local opt = { noremap = false }
utils.map('n', '<C-h>', '<C-w>h', opt)
utils.map('n', '<C-j>', '<C-w>j', opt)
utils.map('n', '<C-k>', '<C-w>k', opt)
utils.map('n', '<C-l>', '<C-w>l', opt)
